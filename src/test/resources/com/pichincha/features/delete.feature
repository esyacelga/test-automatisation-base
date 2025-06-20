@REQ_BP04 @HU04 @eliminar_personaje @marvel_characters_api @Agente2 @E2 @iniciativa_personajes
Feature: BP04 - Eliminar personaje por ID (microservicio para Marvel Characters API)

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

  @id:5 @eliminarPersonaje @deleteExitoso
  Scenario: T-API-BP04-CA01-Eliminar personaje exitosamente por ID - 200
    Given path '300'
    When method DELETE
    Then status 204

  @id:6 @eliminarPersonaje @deleteNoExitoso
  Scenario: T-API-BP04-CA02-Intentar eliminar personaje inexistente - 404
    Given path '99999'
    When method DELETE
    Then status 404
