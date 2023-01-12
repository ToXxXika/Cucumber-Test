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

  Scenario: Ajouter une matiere
    Given I navigate to "http://localhost:8080/demo1_war_exploded/MatiereServlet"
    And I wait for "2" sec
    And I click on element having "xpath" "/html/body/div/div[1]/div[1]/button"
    And I enter "GL" into input field having "xpath" "//*[@id='nom']"
    And I enter "3z" into input field having "xpath" "//*[@id='prenom']"
    And I wait for "2" sec
    And I click on element having "xpath" "//*[@id='myModal']/div/div/form/div[2]/input"
    And I take screenshot "Ajouter Matiere"

  Scenario: Supprimer une matiere
    Given I navigate to "http://localhost:8080/demo1_war_exploded/MatiereServlet"
    And I wait for "2" sec
    And I click on element having "xpath" "/html/body/div/div[1]/div[3]/div/div/div[2]/div/table/tbody/tr/td/div/div[2]/form/input[2]"
    And I take screenshot "Supprimer Matiere"


  Scenario: Ajouter Etudiant
    Given I navigate to "http://localhost:8080/demo1_war_exploded/EtudiantServlet"
    And I wait for "2" sec
    And I click on element having "xpath" "/html/body/div/div[1]/div[3]/div/div/div[2]/div/table/tbody/tr/td/div/div[2]/form/input[2]"
    And I enter "Maryem" into input field having "xpath" "//*[@id='nom']"
    And I enter "Ben Younes" into input field having "xpath" "//*[@id='prenom']"
    And I enter "mbyounes@gmail.com" into input field having "xpath" "//*[@id='email']"
    And I enter "IRM2" into input field having "xpath" "//*[@id='RC']"
    And I enter "REF999" into input field having "xpath" "//*[@id='RE']"
    And I wait for "2" sec
    And I click on element having "xpath" "//*[@id='myModal']/div/div/form/div[2]/input"
    And I take screenshot "Ajouter Etudiant"

    Scenario: Suppression Etudiant
      Given I navigate to "http://localhost:8080/demo1_war_exploded/EtudiantServlet"
      And I wait for "2" sec
      And I click on element having "xpath" "/html/body/div/div[1]/div[3]/div/form[1]/div/div[2]/div/table/tbody/tr/td[2]/div/input[2]"
      And I take screenshot "Supprimer Etudiant"

      
    Scenario: CalculMoyenne
      Given I navigate to "http://localhost:8080/demo1_war_exploded/EtudiantServlet"
      And I click on element having "xpath" "/html/body/div/div[1]/div[1]/button"
      And I wait for "2" sec


    

