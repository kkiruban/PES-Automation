@Login_feature
Feature:Login feature


  @admin_login
  Scenario: Login to the Application
    Given I login to the "PES MS CRM" application
    Then I able to see the logged in to "PES MS CRM" application
