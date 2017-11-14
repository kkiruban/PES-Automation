@admin-login-validation
Feature:Package version
  In order test login functionality
  As a tester
  And I should verify as per client requirement

  @admin-login-version
  Scenario Outline: to verify package version on sit env
    Given I should navigate to Salesforce login page for sit enviroment
    When I fill "username" as "<Username>"
    And I fill "password" as "<Password>"
    And I click on submit button
    Then I should see salesforce home page succesfully
    When I navigate to installed packages page for sit env
    Then I should see content "Installed Packages"
    When I get the csm version number in installed packages page
    And I get the CLM Quote Extension version in installed packages page
    And I get the CLM Entitlement Extenstion version  in installed packages page
    And I get the SSI Zenith version in installed packages page
    Then I should verify csm version number with "<csmversion>"
    And I should verify CLM Quote Extension version with "<quoteversion>"
    And I should verify CLM Entitlement Extenstion version with "<EntitlementVersion>"
    And I should verify SSI Zenith version with "<ZenithSolutionVersion>"

    Examples:
      | Username                                        | Password   | csmversion | quoteversion | EntitlementVersion | ZenithSolutionVersion |
      | dsintegration-admin@servicesource.com.sitelekta | srevds123! | 2.26.9     | 2.20         | 2.7                | 2.88.2                |

  @admin-login-version
  Scenario Outline: to verify package version on Ds env
    Given I should navigate to Salesforce login page for sitnext enviroment
    When I fill "username" as "<Username>"
    And I fill "password" as "<Password>"
    And I click on submit button
    Then I should see salesforce home page succesfully
    When I navigate to installed packages page for sit env
    Then I should see content "Installed Packages"
    When I get the csm version number in installed packages page
    And I get the CLM Quote Extension version in installed packages page
    And I get the CLM Entitlement Extenstion version  in installed packages page
    And I get the SSI Zenith version in installed packages page
    Then I should verify csm version number with "<csmversion>"
    And I should verify CLM Quote Extension version with "<quoteversion>"
    And I should verify CLM Entitlement Extenstion version with "<EntitlementVersion>"
    And I should verify SSI Zenith version with "<ZenithSolutionVersion>"

    Examples:
      | Username                                        | Password   | csmversion | quoteversion | EntitlementVersion | ZenithSolutionVersion |
      | dsintegration-admin@servicesource.com.sitelekta | srevds123! | 2.16.6     | 2.10         | 2.7                | 2.65                  |

  @admin-login-version
  Scenario Outline: to verify package version on sitnext env
    Given I should navigate to Salesforce login page for sitnext enviroment
    When I fill "username" as "<Username>"
    And I fill "password" as "<Password>"
    And I click on submit button
    Then I should see salesforce home page succesfully
    When I navigate to installed packages page for sit env
    Then I should see content "Installed Packages"
    When I get the csm version number in installed packages page
    And I get the CLM Quote Extension version in installed packages page
    And I get the CLM Entitlement Extenstion version  in installed packages page
    And I get the SSI Zenith version in installed packages page
    Then I should verify csm version number with "<csmversion>"
    And I should verify CLM Quote Extension version with "<quoteversion>"
    And I should verify CLM Entitlement Extenstion version with "<EntitlementVersion>"
    And I should verify SSI Zenith version with "<ZenithSolutionVersion>"

    Examples:
      | Username                                         | Password | csmversion | quoteversion | EntitlementVersion | ZenithSolutionVersion |
      | dsintegration-admin@servicesource.com.sitnxtelek | 2.26.9   | 2.20       | 2.7          | 2.88.2             |                       |

  @admin-login-version
  Scenario Outline: admin login
    Given I should navigate to Salesforce login page for Prod enviroment
    When I fill "username" as "<Username>"
    And I fill "password" as "<Password>"
    And I click on submit button
    Then I should see salesforce home page succesfully
    When I navigate to installed packages page for prod env
    Then I should see content "Installed Packages"
    When I get the csm version number in installed packages page
    And I get the CLM Quote Extension version in installed packages page
    And I get the CLM Entitlement Extenstion version  in installed packages page
    And I get the SSI Zenith version in installed packages page
    Then I should verify csm version number with "<csmversion>"
    And I should verify CLM Quote Extension version with "<quoteversion>"
    And I should verify CLM Entitlement Extenstion version with "<EntitlementVersion>"
    And I should verify SSI Zenith version with "<ZenithSolutionVersion>"

    Examples:
      | Username                                     | Password   | csmversion | quoteversion | EntitlementVersion | ZenithSolutionVersion |
      | dsintegration-admin@servicesource.com.elekta | srevds123! | 2.26.9     | 2.20         | 2.7                | 2.88.2                |