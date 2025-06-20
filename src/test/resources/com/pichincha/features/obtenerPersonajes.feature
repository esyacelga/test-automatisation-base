@REQ_BP01 @HU01 @obtener_todos_los_personajes @marvel_characters_api @Agente2 @E2 @iniciativa_personajes
Feature: BP01 - Obtener todos los personajes (microservicio para Marvel Characters API)

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

  @id:1 @obtenerPersonajes @respuestaExitosa200
  Scenario: T-API-BP01-CA01-Obtener todos los personajes exitosamente 200 - karate
    When method GET
    Then status 200
    # And match response == []
    # And match response != null
