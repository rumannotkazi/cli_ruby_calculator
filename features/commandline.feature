Feature: Calculator Command Line Interface
  As a user
  I want to be able to use the CLI calculator to perform addition and subtraction
  So that I can quickly perform arithmetic operations from the command line.

  Scenario: Perform addition
    Given the calculator is installed
    When I run the calculator with the following command: "cli_calculator.rb -a 2,3"
    Then I should see the result "5"

  Scenario: Perform subtraction
    Given the calculator is installed
    When I run the calculator with the following command: "cli_calculator.rb -s 4,2"
    Then I should see the result "2"

  Scenario: Invalid operation
    Given the calculator is installed
    When I run the calculator with the following command: "cli_calculator.rb -x 4,2"
    Then I should see the error message "Invalid operation. Try 'main.rb --help' for more information."
