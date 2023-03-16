Feature: Add new learning resource
  As a user I want to add learning resources to my journal so I can review them later

  Scenario: Navigate to Add New Resources page
    Given the Add New Resource link is in the navbar
    When I click the link
    Then I will navigate to the Add New Resource page

  Scenario: Input details into the form on the Add New Resources page
    Given I am on the Add New Resources page
    When I input details into the form
    Then the form details will be correct

  Scenario: Add new resource
    Given I am on the Add New Resources page and the resource details are filled out
    When click the Add New Resource button
    Then I will navigate to the Resource Details page
    And the resource's details will be correct
    And a message for successful resource addition will pop up
    And the resource will be in the My Journal page