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
system_end = false
until system_end == true
	puts "Welcome to our amazing calculator!"
	puts "We will evaluate the numbers you provide using the operator you give us, just like a calculator would do"
	puts "What operation would you like to do? we accept addition (+) subtraction (-) multiplication (*) division (/)"
	puts "At any point when you are done calculating,type 'done'"
	op_string = gets.chomp
	if op_string == 'done'
		system_end = true
	end
	puts "what is the first number you would like to put into your expression"
	integer = gets.chomp.to_i
	if integer == 'done'
		system_end = true
	end
	puts "What is the secound number you would like to put into your expression"
	integer2 = gets.chomp.to_i
	if integer2 == 'done'
		system_end = true
	end


puts "Your expression evaluates to #{calculate(integer, op_string, integer2)}"