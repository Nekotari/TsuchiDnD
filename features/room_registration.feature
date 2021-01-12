Feature: Reservation
  In order to be able to keep track of my rooms
  As an owner
  I should be able to see a list of my registered rooms

  Background:
    Given I am a registered user
    And I am logged in

  Scenario: Checking rooms list
    Given I have registered several rooms
    When I visit the homepage
    Then I should see the list of my rooms
