# Create a calculator
# method accepts 2 integers and an operate in the form of a string
# method adds, subtracts, divides or multiplies based on what the user asks 
# program loops taking multiple equations until user types done
# when program ends, it prints all the expressions completed
# if the user mistypes, they get to retype the information

#Business logic

def test_input(int1, string_op, int2)
	if int1.is_a?(Fixnum) && int2.is_a?(Fixnum)
		case string_op 
			when '+' 
				return true
			when '*' 
				return true
			when '/' 
				return true 
			when '-' 
				return true
		else
			puts "Your input was incorrect try again."
			return false
		end
	else
		puts "Your input was incorrect try again."
		return false
	end
end


def calc(int1, string_op, int2)
	if string_op == '+'
		int1 + int2
	elsif string_op == '-'
		int1 - int2
	elsif string_op == '/'
		int1 / int2
	elsif string_op == '*'
		int1 * int2
	end
end


all_equations = []

#User Interface
puts "Welcome to the basic calculator that cant do much"
puts "It can add subtract multiply and divide"
puts "so its equivliant to a 5th grader"

input = false
until input == true
	puts "Please type (+)(-)(/)(*) to decide your operator, if you want to quit type done."
	operator = gets.chomp
	if operator == "done"
		puts "Thanks for coming!"
		puts all equations
		input = true
	else
		puts "Type the first number you would like to pass through the equation"
		num1 = gets.chomp.to_i
		puts "and now the secound number"
		num2 = gets.chomp.to_i
		if test_input(num1,operator,num2)
			answer = calc(num1,operator,num2)
			complete_equation = num1.to_s + operator + num2.to_s + '=' +answer.to_s
			all_equations << complete_equation
			puts "The answer is #{calc(num1,operator,num2)}"
			puts "Would you like to do another calculation? (y/n)"
			repeat = gets.chomp
			if repeat == 'y'
			else 
				input = true
				puts "Here are the equations you ran sucessfully"
				puts all_equations
			end
		else
			puts "You entered incorrect input try again."
		end
	end
end

