@REQ_BP02 @HU02 @obtener_personaje_por_id @marvel_characters_api @Agente2 @E2 @iniciativa_personajes
Feature: BP02 - Obtener personaje por ID (microservicio para Marvel Characters API)

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

  @id:2 @obtenerPersonajePorId @respuestaExitosa200
  Scenario: T-API-BP02-CA01-Obtener personaje por ID exitosamente 200 - karate
    Given path '/130'
    When method GET
    Then status 200
    And match response != null
