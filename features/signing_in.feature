Feature: Signing in
Scenario: Unsuceesful signing
	Given a user visits the signin page
	When he submits invalid signin information
	Then he should see an error message
Scenario: Sucessful signin
    Given a user visits the signin page
      And the user has an account
      And the user submits valid signin information
      