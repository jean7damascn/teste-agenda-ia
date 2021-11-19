@adding_register
Feature: Add register to the agenda


Scenario: Register name and phone
When I click on add
And I make the record
Then I check if the record was saved