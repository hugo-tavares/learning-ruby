#collection of object references (auto-expandable)
#indexed using [] operator (method); can be indexed with negative numbers or ranges
#heterogeneous types allowed
#Can use %2{str1 str2} for string array creation
het_arr = [1, "two", :three]
puts het_arr[1]

arr_words = %w{ what a great day today! }
puts arr_words [-2] # => day
puts "#{arr_words.first} - #{arr_words.last}"
p arr_words[-3,2] # => ["great", "day"] (go back 3 and take 2)

p arr_words[2..4] # => ["great", "day", "today"]

#make a string out of array elements separated by ','
puts arr_words.join(',') #what,a,great,day,today!

#append: push or <<
#remove: pop or shift
#set: [] = method
#sample = randomly pull elements
#sort! and reverse!

#STACK (LIFO)
stack = []; stack << "one"; stack.push ("two")
puts stack.pop # => two

#QUEUE (FIFO)
queue = []; queue.push "one"; queue.push "two"
puts queue.shift # => one

a = [5,3,4,2].sort!.reverse!
p a # => [5,4,3,2] 
p a.sample(2) # => two random elements

a[6] = 33
p a # => [5,4,3,2,nil,nil]

a = [1, 3, 4, 7, 8, 10]
a.each { |num| print num}
puts # => (print new line)

new_arr = a.select { |num| num > 4}
p new_arr # => [7,8,10]
new_arr = a.select { |num| num <10}
			.reject { |num| num.even?}
p new_arr # => [1, 3, 7]

#multiply each element by 3 producing new array
new_arr = a.map {|x| x * 3}
p new_arr