#instance variables begin with @
#spring into existence when first used
#available to all instance methods of the class
#new causes initialize (method that acts as construct)

class Person
	def initialize (name, age)
		@name = name
		@age = age
	end
	def get_info
		@aditionnal_info = "Interesting"
		"Name: #{@name}, age: #{@age}"
	end
	def name
		@name
	end
	def name= (new_name)
		@name = new_name
	end
end

person1 = Person.new("Joe", 14)
p person1.instance_variables
puts person1.get_info
p person1.instance_variables #[:@name, :@age, :@aditionnal_info]

#instance variables are private
#methods have public access by default
#getters are defined with the same name as the instance variable, the setters are =name
puts person1.name #getter with the same name as the variable
person1.name = "Mike" #using setter
puts person1.name

#attr_accessor - getter and setter
#attr_reader - getter only
#attr_writer - setter only

class Person1 
	attr_accessor :name, :age #getters and setters for name and age
end

person1 = Person1.new
p person1.name
person1.name = "Mike"
person1.age = 15
puts person1.name
puts person1.age
person1.age = "fifteen" #it was previously an integer
puts person1.age

#inside instance method, self refers to the object itself
#outside instance method definition, self refers to the class itself
#use self when calling a setter
class Person2
	attr_reader :age
	attr_accessor :name

	def initialize (name, ageVar)
		@name = name
		self.age = ageVar #call the age= method
		puts age
	end
	def age= (new_age)
		@age = new_age unless new_age > 120
	end
end

person1 = Person2.new("Kim",13)
puts "My age is #{person1.age}"
person1.age = 130
puts person1.age