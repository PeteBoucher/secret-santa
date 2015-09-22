Feature: Signup
	As the person responsable for organising a Secret Santa
	So that I can set up a gift exchange pool
	I should be able to create an account on the site

	Scenario: via email
		Given I am on the homepage
		When I fill in "name" with "Pete"
		And I fill in "email" with "petebouch@gmail.com"
		And I press "Sign up"
		Then I should see "Congratulations"

	Scenario: via email with no username (sad path)
		Given I am on the homepage
		And I fill in "email" with "petebouch@gmail.com"
		And I press "Sign up"
		Then I should see "error"

	Scenario: via username with no email (sad path)
		Given I am on the homepage
		When I fill in "name" with "Pete"
		And I press "Sign up"
		Then I should see "error"
