#files automatically close at the end of the blck

File.foreach( 'sample-text.txt') do |line|
		puts line
		p line
		p line.chomp #chops off newline character
		p line.split # array of words in line
end

	#in that case, if the file doesn't exist, it will abrubtly close the program, so:

def readsFile (filename)
	begin #exception handling

		File.foreach( filename) do |line| puts line.chomp
		end

	rescue Exception => e 
		puts e.message
		puts "Let's pretend this didn't happen..."
	end
end

if File.exist? 'test.txt' #alternative
	File.foreach( 'test.txt') do |line|
		puts line.chomp
	end
else
	puts "There is no such file"
end

def writesOnFile(filename) #creates a file or erases everything in the specified file and writes things
	File.open(filename,"w") do |file|
		file.puts "One line"
		file.puts "Another"
		file.puts "Another one"
	end
end
writesOnFile("sample-text3.txt")
2.times {readsFile ("sample-text.txt")}

puts ENV["EDITOR"] #environment variable