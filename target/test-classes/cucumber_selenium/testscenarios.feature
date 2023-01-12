Feature: UI test
  testing selenium stepdefs using herokuapp a website powered by selenium


  Scenario: Login Successful
    Given I navigate to "http://localhost:8080/demo1_war_exploded/signIn"
    And I wait for "3" sec
    When I enter "admin@gmail.com" into input field having "xpath" "/html/body/main/div[1]/div/div/div/div/div[2]/form/div[1]"
    Then I enter "123" into input field having "xpath" "//*[@id='password']"
    Then I press enter in "xpath" "/html/body/main/div[1]/div/div/div/div/div[2]/form/div[4]/button"
    And I take screenshot "Login Successful"

  Scenario: Login Failed
    Given I navigate to "http://localhost:8080/demo1_war_exploded/signIn"
    And I wait for "3" sec
    When I enter "admin@gmail.com" into input field having "xpath" "/html/body/main/div[1]/div/div/div/div/div[2]/form/div[1]"
    Then I enter "1234" into input field having "xpath" "//*[@id='password']"
    Then I press enter in "xpath" "/html/body/main/div[1]/div/div/div/div/div[2]/form/div[4]/button"
    And I take screenshot "Login Failed"

  Scenario: Supprimer Note Etudiant
    Given I navigate to "http://localhost:8080/demo1_war_exploded/NoteServlet"
    And I wait for "2" sec
    And I click on element having "xpath" "/html/body/div/div[1]/div/div/div/div[2]/ul/li[1]/div[2]/form/input[1]"
    And I take screenshot "Suppression"
