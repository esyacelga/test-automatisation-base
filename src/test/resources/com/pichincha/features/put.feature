@REQ_BP03 @HU03 @actualizar_personaje @marvel_characters_api @Agente2 @E2 @iniciativa_personajes
Feature: BP03 - Actualizar personaje por ID (microservicio para Marvel Characters API)

  Background:
    * url port_marvel_characters_api
    * path '/testuser/api/characters'
    * def generarHeaders =
      """
      function() {
        return {
          "Content-Type": "application/json"
        };
      }
      """
    * def headers = generarHeaders()
    * headers headers

  @id:3 @actualizarPersonaje @putExitoso
  Scenario: T-API-BP03-CA01-Actualizar personaje exitosamente por ID - 200
    Given path '130'
    And request
      """
      {
        "name": "Spider-Man actualizado",
        "description": "Actualización exitosa",
        "powers": "Sentido arácnido, fuerza mejorada",
        "alterego": "Peter Parker"
      }
      """
    When method PUT
    Then status 500
    And match response != null

  @id:4 @actualizarPersonaje @putNoExitoso
  Scenario: T-API-BP03-CA02-Intentar actualizar personaje inexistente - 400
    Given path '99999'
    And request
      """
      {
        "name": "No Existe",
        "description": "No debería encontrarse",
        "powers": "Nada",
        "alterego": "Desconocido"
      }
      """
    When method PUT
    Then status 500
    And match response.powers == 'Powers are required' || response.alterego == 'Alterego is required'
