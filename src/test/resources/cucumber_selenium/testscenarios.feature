Feature: UI test
  testing selenium stepdefs using herokuapp a website powered by selenium


  Scenario: Test Login Failed
    Given I navigate to "http://localhost:8080/#/pages/login"
    And I enter "test" into input field having "xpath" "//*[@id='app']/div/div/div/div/div/div[1]/div/form/div[1]/input"
    And I wait for "1" sec
    And I enter "test" into input field having "xpath" "//*[@id='app']/div/div/div/div/div/div[1]/div/form/div[2]/input"
    And I wait for "1" sec
    And I click on element having "xpath" "//*[@id='app']/div/div/div/div/div/div[1]/div/form/div[3]/div[1]/button"
    And I wait for "2" sec
    And I take screenshot "Login echoué"
  Scenario: Test Login Success
    Given I navigate to "http://localhost:8080/#/pages/login"
    And I enter "oumaimamabrouki99@gmail.com" into input field having "xpath" "//*[@id='app']/div/div/div/div/div/div[1]/div/form/div[1]/input"
    And I wait for "1" sec
    And I enter "123456" into input field having "xpath" "//*[@id='app']/div/div/div/div/div/div[1]/div/form/div[2]/input"
    And I wait for "1" sec
    And I click on element having "xpath" "//*[@id='app']/div/div/div/div/div/div[1]/div/form/div[3]/div[1]/button"
    And I wait for "2" sec
    And I take screenshot "Login avec success"


  Scenario: Test Visualisation des données
    Given I navigate to "http://localhost:8080/#/theme/Visualisation"
    And I wait for "7" sec
    And I take screenshot "Power BI visualisation"






    

