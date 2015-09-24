Feature: Add a group of gift givers
	As a Secret Santa organiser
	So that I can set up a Secret Santa for the office Xmas party
	I should to be able to add a new group of paricipants for my event

	Scenario: Navigate to the create group form
    Given I am on the groups page
    And I click Create group
    Then I should see a form

  Scenario: Create a valid group
    Given I am on the create group page
    When I fill in the following:
      | name          | Quartet Gift Group     |
      | organisation  | The barbershop quartet |
      | max_spend     | 20                     |
      | min_spend     | 0                      |
    And I press "Create group"
    Then I should be on the groups page
    And I should see "Quartet Gift Group"

  Scenario: Create a group with no name
    Given I am on the create group page
    When I fill in the following:
      | organisation  | The barbershop quartet |
      | max_spend     | 20                     |
      | min_spend     | 0                      |
    And I press "Create group"
    Then I should see "Please name your group"