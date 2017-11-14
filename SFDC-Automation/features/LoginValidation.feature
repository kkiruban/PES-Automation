@loginvalidation
Feature:loginvalidation
  In order test wk legal Opportunity entity
  As a tester
  And I should verify as per client requirement

  @om-login @or-login @sm-login @sr-login @so-login
  Scenario Outline: US-004305 US-004355 US-004323 US-004328 Update Opportunity and Opportunity Picklist
    Given I should navigate to Salesforce login page for sit enviroment
    When I fill "username" as "<Username>"
    And I fill "password" as "<Password>"
    And I click on submit button
    Then I should see salesforce home page succesfully

    Examples:
      | Username                                    | Password       |
      | elekta.opsmgr@servicesource.com.sitelekta   | testelekta123! |
      | elekta.opsrep@servicesource.com.sitelekta   | testelekta123! |
      | elekta.salesmgr@servicesource.com.sitelekta | testelekta123! |
      | elekta.salesrep@servicesource.com.sitelekta | testelekta123! |
      | elekta.salesops@servicesource.com.sitelekta | testelekta123! |

  @om-login @or-login @sm-login @sr-login @so-login
  Scenario Outline: US-004305 US-004355 US-004323 US-004328 Update Opportunity and Opportunity Picklist
    Given I should navigate to Salesforce login page for sitnext enviroment
    When I fill "username" as "<Username>"
    And I fill "password" as "<Password>"
    And I click on submit button
    Then I should see salesforce home page succesfully

    Examples:
      | Username                                    | Password       |
      | elekta.opsmgr@servicesource.com.sitnxtelek   | testelekta123! |
      | elekta.opsrep@servicesource.com.sitnxtelek   | testelekta123! |
      | elekta.salesmgr@servicesource.com.sitnxtelek | testelekta123! |
      | elekta.salesrep@servicesource.com.sitnxtelek | testelekta123! |
      | elekta.salesops@servicesource.com.sitnxtelek | testelekta123! |

  @om-login @or-login @sm-login @sr-login @so-login
  Scenario Outline: US-004305 US-004355 US-004323 US-004328 Update Opportunity and Opportunity Picklist
    Given I should navigate to Salesforce login page for Prod enviroment
    When I fill "username" as "<Username>"
    And I fill "password" as "<Password>"
    And I click on submit button
    Then I should see salesforce home page succesfully

    Examples:
      | Username                                 | Password       |
      | elekta.opsmgr@servicesource.com.elekta   | testelekta123! |
      | elekta.opsrep@servicesource.com.elekta   | testelekta123! |
      | elekta.salesmgr@servicesource.com.elekta | testelekta123! |
      | elekta.salesrep@servicesource.com.elekta | testelekta123! |
      | elekta.salesops@servicesource.com.elekta | testelekta123! |