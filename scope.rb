#local_variables -> which variables are in this scope
#Constant is any reference that begins with uppercase, including classes and modules
#inner scope can see constants defined in outer scope and can also override outer constants - value remains unchanged outside

module Test
	PI = 3.14
	class Test2
		def what_is_pi
			puts PI
		end
	end
end
Test::Test2.new.what_is_pi
puts;puts

module MyModule
	MyConstant = 'Outer Constant'
	class MyClass
		puts MyConstant
		MyConstant = 'Inner Constant'
		puts MyConstant
	end
	puts MyConstant
end

#blocks inherit outer scope. Block is a closure
# 								-Remembers the context in which it was defined and uses that context whenever it is called
puts; puts
class BankAccount
	attr_accessor :id, :amount
	def initialize(id, amount)
		@id = id
		@amount = amount
	end
end

acct1 = BankAccount.new(123, 200)
acct2 = BankAccount.new(321, 100)
acct3 = BankAccount.new(421, -100)
accts = [acct1, acct2, acct3]

total_sum = 0
accts.each do |eachAcct|
	total_sum += eachAcct.amount
end

puts total_sum

#a variable created inside the block is only available to the block; parameters to the block are always local to the block - even if they have the same name as variables in the outer scope
#you can explicitly declare block-local variables after a semicolon in the block parameter list