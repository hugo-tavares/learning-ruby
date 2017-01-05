#by default, methods in Ruby are public
#there are 2 ways ofspecifying access control:
	#1.specify public, protected or private - everything until the next access control keyword will be of that acces control level

	#2. Define the methods regularly and then specify public, private, protected access levels and list the comma-separated methods under those levels using method symbols

#first way
class MyAlgorithm
	private
		def test1
			"Private"
		end
	protected
		def test2
		"Protected"
		end
	public
		def public_again
			"Public"
		end
end

#2nd way
class Another
	def test1
		"Private, as declared later on"
	end
	private :test1
end

#public - no acess control

#protected - can be invoked by the objects of the defining class or its subclasses

#private methods - cannot be invoked with an explicit reveiver
					#exception: setting an attribute can be invoked with an explicit receiver

class Person
	def initialize(age)
		self.age = age #LEGAL - EXCEPTION
		puts my_age
		#puts self.my_age #ILLEGAL
						  #CANNOT USE self or anyu other receiver
	end

	private
		def my_age
			@age
		end
		def age=(age)
			@age = age
		end
end
person = Person.new(13)