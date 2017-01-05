#MODULES
#container for classes, methods and constants, or other modules
#like a Class, but cannot be instantiated
#used for: 1.Namespace
#  		   2. Mix-in 

#Module as Namespace

module Sports
	class Match
		attr_accessor :score
	end
end

module Patterns
	class Match
		attr_accessor :complete
	end
end

match1 = Sports::Match.new
match1.score = 45; puts match1.score

match2 = Patterns::Match.new
match2.complete = true; puts match2.complete

#Module as Mixin : it's like an interface, but it provides a way to share (mix-in) ready code among multiple classes
#you can include built-in modules like Enumerable that can do the hard work for you
module SayMyName
	attr_accessor :name
	def print_name
		puts "Name: #{@name}"
	end
end

class Person
	include SayMyName
end
class Company
	include SayMyName
end

person = Person.new
person.name = "Joe"
person.print_name # => Name: Joe
company = Company.new
company.name = "Google & Microsoft LLC"
company.print_name

#ENUMERABLE MODULE (map, select, reject, detect, etc.)
#used by Array class and many others, can be included in your own class, you just have to provide an implementation for the each method


