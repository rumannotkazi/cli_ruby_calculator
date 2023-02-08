
Given("I have entered {int} and {int} into the calculator") do |num1, num2|
    @num1 = num1
    @num2 = num2
end

When("I press the {string} button") do |button|
    if button == "add"
        @operation = "-a"
    else 
        @operation = "-s"
    end

    command = "ruby cli_calculator.rb #{@operation} #{@num1},#{@num2}"
    @output = `#{command}`
end

Then("the result should be {string}") do |result|
    expect(@output.strip).to eq(result)
end

Then("the output file {string} should contain {int}") do |file, exp_result|
    result = File.read(file).strip
    expect(result).to eq(exp_result.to_s)
end
