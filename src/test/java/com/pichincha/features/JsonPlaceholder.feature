Feature: Pruebas de API REST con GET y POST

  Scenario: Obtener un post existente (GET)
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method get
    Then status 200
    And match response.id == 1

  Scenario: Crear un nuevo post (POST)
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request { title: 'Nuevo post', body: 'Contenido de prueba', userId: 1 }
    When method post
    Then status 201
    And match response.title == 'Nuevo post'
    And match response.userId == 1