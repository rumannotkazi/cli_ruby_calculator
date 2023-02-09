# calculator.feature
Feature: Calculator Addition
  As a user of the calculator
  I want to be able to add two numbers
  So that I can get the correct result

Scenario: Add two numbers
  Given I have the calculator
  When I add the numbers "2" and "3"
  Then the result should be "5"

