#take an integer a string operator and another integer and evaluate them
#use if elsif else statement, tried finding more simple method but couldnt find anything online

def calculate(integer, op_string, integer2)
	if op_string == '+'
		integer + integer2
	elsif op_string == '-'
		integer - integer2
	elsif op_string == '*'
		integer * integer2
	elsif op_string == '/'
		integer / integer2
	else
		puts "You've entered something incorect!"
	end
end

#User Interface

puts "Welcome to our amazing calculator!"
puts "We will evaluate the numbers you provide using the operator you give us, just like a calculator would do"
puts "What operation would you like to do? we accept addition (+) subtraction (-) multiplication (*) division (/)"
op_string = gets.chomp
puts "what is the first number you would like to put into your expression"
integer = gets.chomp.to_i
puts "What is the secound number you would like to put into your expression"
integer2 = gets.chomp.to_i


puts calculate(4, '*', 3)