double_quoted ="ice cream \n followed by it\'s a party!"
single_quoted = 'ice cream \n followed by it\'s a party!'

puts single_quoted # => ice cream \n followed by it's a party!
puts double_quoted # => ice cream
					# => followed by it's a party!

def multiply (one,two)
	"#{one} multiplied by #{two} equals #{one * two}" #interpolation only available for double-quoted strings
end
puts multiply(5, 3)

my_name = " tim"
puts my_name.lstrip.capitalize # => Tim
p my_name # => " tim"
my_name.lstrip! #destructive> removes the leading space
my_name[0] = 'K' # replace the first character
puts my_name # => Kim

cur_weather = %Q{It's a hot day outside
					Grab your umbrellas...}

cur_weather.lines do |line|
	line.sub! 'hot', 'rainy' # substitute 'hot' with 'rainy'
	puts "#{line.strip}"
end
# => It's a rainy day outside
# => Grab your umbrellas...

#symbols can be converted to and from strings: to_s ; to_sym
#can be a representation of a method name; capture information
puts :foo
