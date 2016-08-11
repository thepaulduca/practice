#take an integer a string operator and another integer and evaluate them
#use if elsif else statement, tried finding more simple method but couldnt find anything online

def calculate(integer, op_string, integer2)
	string_int = integer.to_s
	string_int2 = integer2.to_s
	complete_expression = string_int + op_string + string_int2
	puts complete_expression
	if op_string == '+'
		puts integer + integer2
	elsif op_string == '-'
		puts integer - integer2
	elsif op_string == '*'
		puts integer * integer2
	elsif op_string == '/'
		puts integer / integer2
	else
		puts "Thanks for coming to calculate"
	end
end

all_expressions = []

#User Interface

puts "Welcome to our amazing calculator!"
puts "We will evaluate the numbers you provide using the operator you give us, just like a calculator would do"
	puts "What operation would you like to do? we accept addition (+) subtraction (-) multiplication (*) division (/)"
system_end = false
until system_end == true
	puts "At any point when you are done calculating,type 'done'"
	puts "Type your operator now!"
	op_string = gets.chomp
	if op_string == 'done'
		system_end = true
	else
		puts "what is the first number you would like to put into your expression"
		integer = gets.chomp.to_i
		if integer == 'done'
			system_end = true
		else
			puts "What is the secound number you would like to put into your expression"
			integer2 = gets.chomp.to_i
			if integer2 == 'done'
				system_end = true
			end
			saved_expression = integer.to_s + op_string + integer2.to_s
			all_expressions << saved_expression
			puts calculate(integer, op_string, integer2)
		end
	end
end

puts all_expressions

