require 'pry'
require_relative 'player'
require_relative 'board'
#require_relative 'boardcase'

class Game
	
    def display_rules
puts " "
puts " "*18 + "-"*39
puts " "*20 + "Salut, bienvenue dans tic tac toe !"
puts " "*18 + "-"*39
puts " "
puts "Regles du jeu :"
puts "Pour jouer une partie de morpion, vous disposerez d'une grille de 3 cases sur 3 (selon les variantes, il est possible d’augmenter le nombre de cases).
Le but du jeu est d’aligner avant son adversaire 3 symboles identiques
horizontalement, verticalement ou en diagonale."
puts " "
puts "Nous allons vous definir un symbole, une croix pour l’un et un rond pour l’autre"

"La partie se termine quand l’un des joueurs à aligner 3 symboles ou quand la grille est complétée sans vainqueur. Il y a alors égalité."
    puts " "
    puts " "*29 + "-"*16
    puts " "*31 + "C'est parti !"
    puts " "*29 + "-"*16
    puts " "
	end

	def user_attribution
	
	puts "Quel est le nom du Joueur 1 ?"
	print ">"
    
    get_player1 = gets.chomp

    
    player1 = Player.new(get_player1, "x")
    puts " "
    puts "Bienvenue #{player1.username}, tu auras le signe '#{player1.symbol}' !"
    puts " "
    puts " "
    puts "Quel est le nom du Joueur 2 ?"
    print ">"
    get_player2 = gets.chomp

    player2 = Player.new(get_player2, "o")
    puts " "
    puts "Bienvenue #{player2.username}, tu auras le signe '#{player2.symbol}' !"
    puts " "

	end

    def get_new_board
        
        @board = Board.new
        puts @board.create_board
    
    end

    # def turn

    #     @board = Board.new
    #      puts @board.play_turn
    
    # end
    
end

Game.new.display_rules
Game.new.user_attribution
Game.new.get_new_board
#Game.new.turn



