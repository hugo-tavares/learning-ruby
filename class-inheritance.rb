# || operator evaluates the left side; if true - returns it (every value including 0, strings, etc is true)
# 									   else - returns the right side
# @x = @x || 5 will return 5 the first time and @x the next time
#short form @x ||= 5 - same as above

class Person
	attr_reader :age
	attr_accessor :name

	def initialize (name, age) #CONSTRUCTOR
		@name = name
		self.age = age #call the age= method
	end
	def age= (new_age)
		@age ||= 5 #default
		@age = new_age unless new_age > 120			
	end
end
person1 = Person.new("Kim", 130)
puts person1.age # => 5 (default)
person1.age = 10 # => change to 10
puts person1.age # => 10
person1.age = 200
puts person1.age

#class methods and variables: invoked on the class (as opposed to instance of class). Similar to static methods in java
#self OUTSIDE of the method definition refers to the Class object

#Class variables begin with @@
#3 ways to declare class methods
class MathFunctions #no neeed to create an instance of this function
	def self.double(var) # 1. Using self
		times_called; var * 2;
	end
	class << self # 2. Using << self
		def times_called
			@@times_called ||=0; @@times_called += 1
		end
	end
end
def MathFunctions.triple(var) #3. outstide of class
	times_called; var * 3
end

#No instance created!
puts MathFunctions.double 5 # => 10 btw no need to use parens
puts MathFunctions.triple(3) # => 9
puts MathFunctions.times_called # => 3

#INHERITANCE
class Dog #Implicitly inherits from Object
	def to_s
		"Dog"
	end
	def bark
		"barks loudly"
	end
end
class SmallDog < Dog # < Denotes inheritance
	def bark #Override
		"barks quietly"
	end
end

dog = Dog.new #(btw, new is a class method)
small_dog = SmallDog.new
puts "#{dog}1 #{dog.bark}"
puts "#{small_dog}2 #{small_dog.bark}"
