#take an integer a string operator and another integer and evaluate them
#use if elsif else statement, tried finding more simple method but couldnt find anything online

def calculate(integer, op_string, integer2)
	if integer.is_a?(Fixnum) == true
		if integer2.is_a?(Fixnum) == true
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
				puts "You entered an incorrect operator the output is incorrect, try it again!"
			end
		else 
			puts "You entered the wrong character the output is incorrect, try again"
		end
	else 
		puts "You entered the wrong character the out put is incorrect, try again"
	end
end

all_expressions = []
answers = []

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
			saved_expression = integer.to_s + op_string + integer2.to_s + " = #{calculate(integer, op_string, integer2)}"
			all_expressions << saved_expression
			calculate(integer, op_string, integer2)
		end
	end
end

puts "Here are the expressions you evaluated"
puts all_expressions


puts "#{calculate(3,'+', 3)}"
