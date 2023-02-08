require 'optparse'

options = {}
OptionParser.new do |opts|
    opts.banner = "Usage: main.rb [options]"

    opts.on("-a", "--add NUM1 NUM2", Array, "Add two numbers") do |num1, num2|
        options[:add] = [num1, num2]
    end

    opts.on("-s", "--subtract NUM1 NUM2", Array, "Subtract two numbers") do |num1, num2|
        options[:subtract] = [num1, num2]
    end

end.parse!

if options[:add]
    num1, num2 = options[:add]
    result = num1.to_i + num2.to_i
    operation = "Addition"
elsif options[:subtract]
    num1, num2 = options[:subtract]
    result = num1.to_i - num2.to_i
    operation = "Subtraction"
else
    puts "Invalid operation. Try 'main.rb --help' for more information."
    exit
end
# Store the result in a file called result.txt in a folder called output in the same directory as main.rb
# Create the output folder if it doesn't exist
Dir.mkdir("output") unless Dir.exists?("output")
File.open("output/result.txt", "w") { |file| file.write(result) }
puts "The result of #{operation} is #{result}"