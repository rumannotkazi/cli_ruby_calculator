Feature: Calculator
    As a user, I want to use a calculator to perform 
    simple arithmetic operations, so that I can 
    get quick answers to simple questions.

Scenario: Add two numbers
    Given I have entered 20 and 8 into the calculator
    When I press the "add" button
    Then the result should be "The result of Addition is 28"
    And the output file "output/result.txt" should contain 28
