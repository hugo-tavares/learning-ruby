def firstClasses 
	 #CONTROL STATEMENTS ALWAYS END WITH 'end'
	a = 5
	if a ==3
		puts "a is 3"
	elsif a == 5
		puts "a is 5"
	else
		puts "a is not 3 or 5"
	end

	unless a ==6
		puts "a is not 6"
	end

	while a > 9
		puts a
		a -= 1
	end

	until a >= 10
		puts a
		a += 1
	end

	# Modifier Form : if, unless, while, until - on the same line as the statement
	b = 0
	puts "One liner" if a == 5 and b ==0

	times_2 = 2
	times_2 *= 2 while times_2 < 100
	puts times_2

	#Everything is true except for false and nil

	# === : "Equal" in its own way
	#if Integer === 21
		#=>true

	case #1st flavor
		when age >= 21
			puts "dsafdf"
		when 1 == 0
			puts "sdfg"
		else
			puts "default condition"
	end

	case name #2nd flavor
		when /fish/i then puts "asdfsag"
		when 'sdoifj' then puts "asdoigj"
	end
end

def factorial_with_default (n=5)
	n ==0 ? 1 : n * factorial_with_default(n - 1)
end

def max(one_param, *numbers, another) #splat: turns into an array
	numers.max 
end

# => BLOCKS ARE JUST CHUNKS OF CODE YOU CAN PASS INTO A METHOD
#blocks:  {} when single line; do and end when multiple lines. Often used as iterators
def doIndex (index)
	2.times do |index|
		if index > 0
			puts index
		end
	end
end

def doIndex2 (index)
	2.times { |index| puts index if index>0}
end

def two_times_implicit
	return "No block" unless block_given?
	yield
	yield
end
=begin 
puts two_times_implicit { print "Hello "} # => Hello
			=> Hello
puts two_times_implicit # =>no block
=end

def two_times_explicit (&i_am_a_block)
	return "No block" if i_am_a_block.nil?
	i_am_a_block.call
	i_am_a_block.call

end