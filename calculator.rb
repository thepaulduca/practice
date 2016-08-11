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

puts calculate(4, '*', 3)