Feature: Admin
  In order to manage the website
  As an administrator
  I should be able to see users list

  Background:
    Given I am an administrator
    And I am logged in

  Scenario: Listing users
    When I visit the users page
    Then should see the list of users
