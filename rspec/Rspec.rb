#run rspec --init
#describe() - set of related tests
			#takes either a String or Class as argument
			#all specs must be inside a describe block
			#no class to subclass unlike Test::Unit which always subclasses TestClass class
#before() and after() methods are similar to setup() and teardown() in MiniTest
#can pass in either :each or :all (infrequently used) to specify whether the block will run before/after each test or once before/after all tests
#before :all could be useful, if for example you only want to connect to DB once
#it() method
	#used to define actual RSpec specifications/examples
	#takes an optional string that describes the behavior being tested

#RSpec "hangs" to and not_to methods on all outcome of expectations
#to()/not_to() methods take one parameter - a matcher
#matcher examples:
	#be_true/ be_false
	#eq 3
	#raise_error(SomeError)
	#if the object on which the test is operating has a predicate (boolean) method - you automatically get a be_predicate matcher
		#be_nil is valid because every object has a :nil? method
#it "should sum two odd numbers and become even" do
	#expect(@calculator.add(3,3)).to be_even
	#expect(@calculator.add(3,3)).not_to be_odd
#end
#rspec --format documentation - show what is expected of the program so that you know what is right


