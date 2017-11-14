@elekta @opportunity
Feature:opportunity
  In order test wk legal Opportunity entity
  As a tester
  And I should verify as per client requirement

#   @create_opportunity
  Scenario Outline: create opportunity
    Given I should navigate to salesforce Home page
    Then I should see salesforce home page succesfully
    When I click on Opportunity tab from all tabs section
    Then I should see Opportunity page succesfully
    And I should see following:
      """
      Opportunities
      Home
      """
    When I follow on "New" button
    Then I should see following:
      """
      New Opportunity
      Select Opportunity Record Type
      """
    When I select "Opportunity - Edit" from "Record Type of new record"
    And I click on continue button to create a new opportunity
    Then I should see following:
      """
      Opportunity Edit
      New Opportunity
      """
    When I fill in "Opportunity Name" with random "<Opportunity-Name>"
    And I fill in "Close Date" with random "12/13/2017"
    And I select "Contacted" from "Stage"
    And I select "Volume" from "Opportunity Type"
    And I select "Direct" from "Direct/Channel"
    And I select "Americas" from "Client Territory"
    And I select "UK&I" from "Client Region"
    And I select "United States" from "Country"
    And I select "EMEA" from "SSI Theatre"
    And I click on account name lookup field and I select any existing account
    And I click on Price Book lookup field and I select any existing Price Book
    And I click on "Save" button from top row

    Examples:
      | Opportunity-Name          |
      | smoke-test-Opportunity-1- |
      | smoke-test-Opportunity-2- |