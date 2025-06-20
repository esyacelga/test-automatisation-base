@REQ_BP05 @HU05 @crear_personaje @marvel_characters_api @Agente2 @E2 @iniciativa_personajes
Feature: BP05 - Crear personaje (microservicio para Marvel Characters API)

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

  @id:7 @crearPersonaje @postExitoso
  Scenario: T-API-BP05-CA01-Crear personaje exitosamente - 201
    Given request { "name": "Iron Man anansdknfsd", "description": "Genio, millonario, playboy, filántropo", "powers": ["Armor", "Flight"], "alterego": "Tony Stark" }
    When method POST
    Then status 201


  @id:9 @crearPersonaje @postNombreDuplicado
  Scenario: T-API-BP05-CA03-No se puede crear personaje con nombre duplicado - 409
    Given request { "name": "Iron Man 799", "description": "Genio, millonario, playboy, filántropo", "powers": ["Armor", "Flight"], "alterego": "Tony Stark" }
    When method POST
    Then status 400



  @id:10 @crearPersonaje @postCamposRequeridosFaltantes
  Scenario: T-API-BP05-CA04-No se puede crear personaje por falta de campos requeridos - 400
    Given request { "name": "Iron Man 1111332", "powers": ["Armor", "Flight"], "alterego": "Tony Stark" }
    When method POST
    Then status 400
    And match response.description == 'Description is required'
