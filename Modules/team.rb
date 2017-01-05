#team.rb
class Team
	include Enumerable #LOTS of functionality

	attr_accessor :name, :players
	def initialize (name)
		@name = name
		@players = []
	end
	def add_players (*players) #splat - turns into an array
		@players += players #indexing just by using +, cool stuff huh
	end
	def to_s
		"#{@name} team: #{@players.join(", ")}"
	end
	def each
		@players.each { |player| yield player}
	end
end