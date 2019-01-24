require 'pry'
class Player

attr_reader :username, :symbol
	
	def initialize(username_player, symbol_player)
		@username = username_player
		@symbol = symbol_player
	end
end

