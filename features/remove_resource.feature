Feature: Remove learning resources
    As a user I want to remove learning resources from my journal so that I don't have to review them later.

    Scenario: Remove learning resource from My Journal Page
        Given I have resources in my journal
        And I am on the My Journal Page
        When I click the delete button on the learning resource
        And I confirm the deletion in the dialog
        Then the resource will be removed from my journal
        And a message for successful deletion will pop up

        Given I have resources in my journal
        And I am on the Resource Details page
        When I click the delete button in the resource details
        And I confirm the deletion in the dialog
        Then I will navigate to the My Journal page
        And the resource will be removed from my journal
        And a message for successful deletion will pop up