#also known as maps or dictionaries
#associative arrays; indexed collections of object references
#index(key) can be anything
#values set using =>(creation), [](post creation)
#in ruby, the order of putting things into Hash is mantained

editor_props = { "font" => "Arial", "size" => 12, "color" => "red"}

# THE ABOVE IS NOT A BLOCK - IT'S A HASH
puts editor_props.length # => 3
puts editor_props["font"] # => Arial

editor_props["background"] = "Blue"
editor_props.each_pair do |key, value|
	puts "Key: #{key} value: #{value}"
end



#if you try to acces a value for which an entry doesn't exist, it returns nil, but:
new_hash = Hash.new(0) #returns 0 when an entry doesn't exist

word_frequency = Hash.new(0)

sentence = "Chicka chicka boom boom"
sentence.split.each do |word|
	word_frequency[word.downcase] += 1 #word.downcase is now the index of the hash
end

p word_frequency # => {"chicka" =>2, "boom" => 2}

#if a Hash is the last argument (not including a block) to a method {} are optional
#when you use a symbol as a key, you use symbol: to declare and :symbol to get

family_tree_19 = {oldest: "Jim", older: "Joe", younger: "Jack"}
family_tree_19[:youngest] = "Jeremy"
p family_tree_19

#Named parameter "like" behaviour...
def adjust_colors (props = {foreground: "red", background: "white"})
	puts "Foreground: #{props[:foreground]}" if props[:foreground]
	puts "Background: #{props[:background]}" if props[:background]
end
adjust_colors # => foreground: red
			  # => background: white
adjust_colors ({:foreground => "green"}) # => foreground: green
adjust_colors background: "yella" # => background:yella
adjust_colors :background => "magenta" # => background: magenta