@create_test_data
Feature: data creation

  @create_account
  Scenario: create account
    Given I should navigate to salesforce Home page
    Then I should see salesforce home page succesfully
    When I click on accounts tab from all tabs section
    Then I should see account page succesfully
    And I should see following:
      """
      Accounts
      Home
      """
    When I follow on "New" button
    Then I should see following:
      """
      Account Edit
      New Account
      """
    When I fill in the following:
      | field             | value                  |
      | Account Name      | smoke-test-account-123 |
      | Client Company ID | 001                    |
    And I select the following:
      | field    | value   |
      | Industry | Apparel |
    And I click on "Save" button from top row

  @create_account
  Scenario Outline: create account
    Given I should navigate to salesforce Home page
    Then I should see salesforce home page succesfully
    When I click on accounts tab from all tabs section
    Then I should see account page succesfully
    And I should see following:
      """
      Accounts
      Home
      """
    When I follow on "New" button
    Then I should see following:
      """
      Account Edit
      New Account
      """
    When I fill in "Account Name" with random "<account-name>"
    And I fill in "Client Company ID" with random "001"
    And I click on "Save" button from top row

    Examples:
      | account-name          |
      | smoke-test-account-1- |
      | smoke-test-account-2- |

  @create_Contact
  Scenario Outline: create contact
    Given I should navigate to salesforce Home page
    Then I should see salesforce home page succesfully
    When I click on contacts tab from all tabs section
    Then I should see contacts page succesfully
    And I should see following:
      """
      Contacts
      Home
      """
    When I follow on "New" button
    Then I should see following:
      """
      Contact Edit
      New Contact
      """
    When I fill in "Last Name" with random "<Contact-Name>"
    And I click on account name lookup field and I select any existing account
    And I click on "Save" button from top row

    Examples:
      | Contact-Name          |
      | smoke-test-contact-1- |
      | smoke-test-contact-2- |

  @create_Leads
  Scenario Outline: create Leads
    Given I should navigate to salesforce Home page
    Then I should see salesforce home page succesfully
    When I click on leads tab from all tabs section
    Then I should see leads page succesfully
    And I should see following:
      """
      Leads
      Home
      """
    When I follow on "New" button
    Then I should see following:
      """
      Lead Edit
      New Lead
      """
    When I fill in "Last Name" with random "<Leads-name>"
    And I fill in "Company" with "PES"
    And I fill in "Estimated Amount" with "1000"
    And I fill in "Estimated Close Date" with "12/13/2017"
    And I click on account name lookup field and I select any existing account
    And I click on "Save" button from top row

    Examples:
      | Leads-name          |
      | smoke-test-leads-1- |
      | smoke-test-leads-2- |

  @create_Assets
  Scenario Outline: create assets
    Given I should navigate to salesforce Home page
    Then I should see salesforce home page succesfully
    When I click on assets tab from all tabs section
    Then I should see assets page succesfully
    And I should see following:
      """
      Asset
      Home
      """
    When I follow on "New" button
    Then I should see following:
      """
      Asset Edit
      New Asset
      """
    When I fill in "Asset Name" with random "<Asset-Name>"
    And I click on account name lookup field and I select any existing account
    And I click on contact name lookup field and I select any existing contact
    And I click on "Save" button from top row

    Examples:
      | Asset-Name          |
      | smoke-test-Asset-1- |
      | smoke-test-Asset-2- |

  @create_product
  Scenario Outline: create product
    Given I should navigate to salesforce Home page
    Then I should see salesforce home page succesfully
    When I click on products tab from all tabs section
    Then I should see products page succesfully
    And I should see following:
      """
      Products
      Home
      """
    When I follow on "New" button
    Then I should see following:
      """
      Product Edit
      New Product
      """
    When I fill in "Product Name" with random "<Product-Name>"
    And I select "USD - U.S. Dollar" from "Product Currency"
    And I click on "Active" check box field
    And I click on "Save & Add Price" button from top row
    Then I should see add standard price page succesfully
    And I fill in "USD - U.S. Dollar" with random "10"
    And I click on "Save" button from top row

    Examples:
      | Product-Name          |
      | smoke-test-product-1- |
      | smoke-test-product-2- |

  @create_opportunity
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
    When I fill in the following:
      | field      | value      |
      | Close Date | 12/13/2017 |
    And I fill in "Close Date" with random "12/13/2017"
    And I select the following:
      | field            | value         |
      | Stage            | Contacted     |
      | Opportunity Type | Volume        |
      | Direct/Channel   | Direct        |
      | Client Territory | Americas      |
      | Client Region    | UK&I          |
      | Country          | United States |
      | SSI Theatre      | EMEA          |
    And I click on account name lookup field and I select any existing account
    And I click on Price Book lookup field and I select any existing Price Book
    And I click on "Save" button from top row

    Examples:
      | Opportunity-Name          |
      | smoke-test-Opportunity-1- |
      | smoke-test-Opportunity-2- |

  @create_locationaddress
  Scenario Outline: create locationaddress
    Given I should navigate to salesforce Home page
    Then I should see salesforce home page succesfully
    When I click on location address tab from all tabs section
    Then I should see location address page succesfully
    And I should see following:
      """
      Location Address
      Home
      """
    When I follow on "New" button
    Then I should see following:
      """
      Location Address Edit
      New Location Address
      """
    When I fill in "Location Address Name" with random "<Location-Address-Name>"
    And I click on "Save" button from top row

    Examples:
      | account-name                        |
      | smoke-test-Location-Address-Name-1- |
      | smoke-test-Location-Address-Name-2- |