require_relative '../../cli_calculator.rb'
require 'fakefs/safe'

Given("I have the calculator") do
  @calculator = Calculator.new
end

When("I add the numbers {string} and {string}") do |num1, num2|
  FakeFS.activate!
  @calculator.add(num1.to_i, num2.to_i)
end

Then("the result should be {string}") do |result|
  FakeFS.deactivate!
  expect(File.read("output/result.txt")).to eq result
end
