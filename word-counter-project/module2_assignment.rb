#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer
  #Implement the following read-only attributes in the LineAnalyzer class. 
  attr_reader :highest_wf_count, #- a number with maximum number of occurrences for a single word (calculated)
              :highest_wf_words, #- an array of words with the maximum number of occurrences (calculated)
              :content,          #- the string analyzed (provided)
              :line_number       #- the line number analyzed (provided)

  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency
  end

  def calculate_word_frequency()
    #Implement the calculate_word_frequency() method to:
    #* calculate the maximum number of times a single word appears within
    #  provided content and store that in the highest_wf_count attribute.
    #* identify the words that were used the maximum number of times and
    #  store that in the highest_wf_words attribute.
    word_array = content.downcase.split
    word_count = Hash.new
    @highest_wf_count = 0
    @highest_wf_words = []

    word_array.each do |word|
      unless word_count.has_key?(word)
        word_count[word] = 1
        else
          word_count[word] += 1
      end
    end
    
    word_count.each_key do |word|
        @highest_wf_count = word_count[word] if word_count[word] > @highest_wf_count
    end
    word_count.each_key do |word|
        @highest_wf_words << word if word_count[word] == @highest_wf_count
    end 
  end 
end

#  Implement a class called Solution. 
class Solution
  # Implement the following read-only attributes in the Solution class.
  attr_reader :analyzers,                     #- an array of LineAnalyzer objects for each line in the file
              :highest_count_across_lines,      #- a number with the maximum value for highest_wf_words attribute in the analyzers array.
              :highest_count_words_across_lines #- a filtered array of LineAnalyzer objects with the highest_wf_words attribute equal to the highest_count_across_lines determined previously.

  def initialize()
    @analyzers = []
  end
  # Implement the following methods in the Solution class.
  #* analyze_file() - processes 'test.txt' into an array of LineAnalyzers and stores them in analyzers.
  #* calculate_line_with_highest_frequency() - determines the highest_count_across_lines and 
  #  highest_count_words_across_lines attribute values
  #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in 
  #  highest_count_words_across_lines in the specified format
  
  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines 
  #* Create an array of LineAnalyzers for each line in the file
  def analyze_file()


    lines = 1
    begin
      File.foreach( 'test.txt') do |line|
        new_element = LineAnalyzer.new(line.chomp, lines)
        @analyzers << new_element
          lines += 1 
      end
    rescue Exception => e
      puts e.message
    end
  end

  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array
  #  and stores this result in the highest_count_across_lines attribute.
  #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines attribute value determined previously and stores them in highest_count_words_across_lines.
  def calculate_line_with_highest_frequency()
    max_value = 0
    @highest_count_across_lines = 0
    @highest_count_words_across_lines = []
 
    analyzers.each do |word|
      max_value = word.highest_wf_count if word.highest_wf_count > max_value
    end
    @highest_count_across_lines = max_value
    analyzers.each do |word|
      @highest_count_words_across_lines << word if word.highest_wf_count == @highest_count_across_lines #several hours stuck on this because I was trying to acces the array's attributes instead of the object's

    end
   p
  end

  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the values of objects in highest_count_words_across_lines in the specified format
  def print_highest_word_frequency_across_lines()
    highest_count_words_across_lines.each {|element| puts"#{element.highest_wf_words} \(appears on line #{element.line_number}\)"}
  end

end
