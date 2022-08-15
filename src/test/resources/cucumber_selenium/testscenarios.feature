Feature: UI test
  testing selenium stepdefs using herokuapp a website powered by selenium


  Scenario:  I try to login
    Given I navigate to "http://localhost:4200/#/auth/login"
    And I wait for "2" sec
    When I enter "mabrouki552@gmail.com" into input field having "xpath" "//*[@id='email1']"
    Then I enter "123" into input field having "xpath" "//*[@id='password1']/div/input"
    Then I press enter in "xpath" "/html/body/app-root/app-login/div/div/div[2]/div/div[2]/button"
    And I wait for "2" sec
    And I take screenshot "Login Successful"
  Scenario: Mail ou mot de passe Invalides
    Given I navigate to "http://localhost:4200/#/auth/login"
    When I enter "mabrouki552@gmail.com" into input field having "xpath" "//*[@id='email1']"
    Then I enter "45454545" into input field having "xpath" "//*[@id='password1']/div/input"
    Then I press enter in "xpath" "/html/body/app-root/app-login/div/div/div[2]/div/div[2]/button"
    And I wait for "1" sec
    And I take screenshot "Failed Connection"
  Scenario: Ajout d'un adhérent Success
    Given I navigate to "http://localhost:4200/#/uikit/formlayout"
    And I enter "12345678" into input field having "xpath" "//*[@id='cin']"
    And I wait for "1" sec
    And I enter "Rami" into input field having "xpath" "//*[@id='name1']"
    And I wait for "1" sec
    And I enter "Bejaoui" into input field having "xpath" "//*[@id='prenom']"
    And I wait for "1" sec
    And I enter "1234" into input field having "xpath" "//*[@id='password']"
    And I wait for "1" sec
    And I enter "RamiBejaoui@gmail.com" into input field having "xpath" "//*[@id='mail']"
    And I wait for "1" sec
    And I click on element having "xpath" "/html/body/app-root/app-layout/div/div[2]/div/ng-component/div/div/div/p-button/button"
    And I wait for "1" sec
    And I take screenshot "Ajout Adherent Success"
 Scenario: Ajout d'un adhérent avec un CIN existant
   Given I navigate to "http://localhost:4200/#/uikit/formlayout"
   And I enter "12345678" into input field having "xpath" "//*[@id='cin']"
   And I wait for "1" sec
   And I enter "Rami" into input field having "xpath" "//*[@id='name1']"
   And I wait for "1" sec
   And I enter "Bejaoui" into input field having "xpath" "//*[@id='prenom']"
   And I wait for "1" sec
   And I enter "1234" into input field having "xpath" "//*[@id='password']"
   And I wait for "1" sec
   And I enter "RamiBejaoui@gmail.com" into input field having "xpath" "//*[@id='mail']"
   And I wait for "1" sec
   And I click on element having "xpath" "/html/body/app-root/app-layout/div/div[2]/div/ng-component/div/div/div/p-button/button"
   And I wait for "1" sec
   And I take screenshot "Ajout Adherent Echec"
  Scenario: Paiement 
    Given I navigate to "http://localhost:4200/#/uikit/button"
    And  I enter "12345678" into input field having "xpath" "//*[@id='Cin']"
    And  I press Tab on "xpath" "//*[@id='Cin']"
    And I wait for "1" sec
    And I take screenshot "Utilisateur Trouvé"

    And I click on element having "xpath" "//*[@id='divc']/p-button/button"
    And I wait for "1" sec
    And I click on element having "xpath" "//*[@id='c1']/p-dataview/div/div/div/div[1]/div/div[2]/p-button/button"
    And I enter "1" into input field having "xpath" "/html/body/app-root/app-layout/div/div[2]/div/ng-component/div/div/div[2]/p-dialog/div/div/div[4]/p-inputnumber/span/input"
    And I wait for "1" sec
    And I click on element having "xpath" "/html/body/app-root/app-layout/div/div[2]/div/ng-component/div/div/div[2]/p-dialog/div/div/div[4]/p-button/button"
    And I wait for "0.5" sec
    And I take screenshot "Paiement Success"
