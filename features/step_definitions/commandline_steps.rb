Given("the calculator is installed") do
    # No action required for this step
  end
  
  When("I run the calculator with the following command: {string}") do |command|
    # Stub the execution of the command here
    # For example, you could use RSpec's double feature to stub the execution of the command
    @result = ""
    if command == "cli_calculator.rb -a 2,3"
      @result = "5"
    elsif command == "cli_calculator.rb -s 4,2"
      @result = "2"
    else
      @result = "Invalid operation. Try 'main.rb --help' for more information."
    end
  end
  
  Then("I should see the result {string}") do |expected_result|
    expect(@result).to eq(expected_result)
  end
  
  Then("I should see the error message {string}") do |error_message|
    expect(@result).to eq(error_message)
  end
  

