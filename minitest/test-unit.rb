#same thing as MiniTest
#basic idea - extend Test::Unit::TestCase
			  #prefix method names with test_
			  #if one of the methods fails - others keep going
			  #can use setup() and teardown() methods for setting up behavior that will execute before every test method

require 'test/unit'
require_relative 'calculator'

class CalculatorTest < Test::Unit::TestCase
	def setup
		@calc = Calculator.new('test')
	end

	def test_addition
		assert_equal 4, @calc.add(2, 2)
	end

	def test_substraction
		assert_equal 2, @calc.subtract(4, 2)
	end

	def test_division
		assert_equal 2, @calc.divide(4, 2)
	end

	def test_divide_by_zero
		assert_raise ZeroDivisionError do #specifies the exception you expect and, in the coding block, when you expect it to occur
		  @calc.divide(1, 0)
		end
			
	end
end