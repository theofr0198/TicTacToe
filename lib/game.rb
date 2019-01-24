require 'pry'
require_relative 'player'

class Game

	def display_rules

puts "Salut, bienvenue dans tic tac toe !"
puts "Pour jouer une partie de morpion, vous disposerez d'une grille de 3 cases sur 3 (selon les variantes, il est possible d’augmenter le nombre de cases). Le but du jeu est d’aligner avant son adversaire 3 symboles identiques horizontalement, verticalement ou en diagonale.
Nous allons vous definir un symbole, une croix pour l’un et un rond pour l’autre. La partie se termine quand l’un des joueurs à aligner 3 symboles ou quand la grille est complétée sans vainqueur. Il y a alors égalité."
	end

	def user_attribution
	
	puts "Quel est le nom du Joueur 1 ?"
	print ">"
    
    get_player1 = gets.chomp.to_s
    
    player1 = Player.new(get_player1, "x")
    

    puts "Bienvenue #{player1.username}, tu auras le signe #{player1.symbol}"
    puts "Quel est le nom du Joueur 2 ?"
    print ">"
    get_player2 = gets.chomp.to_s

    player2 = Player.new(get_player2, "o")

    puts "Bienvenue #{player2.username}, tu auras le signe #{player2.symbol}"

    puts "#{player1.username} tu joueras avec les #{player1.symbol} et #{player2.username} tu joueras avec les #{player2.symbol}"
    

	end

end

Game.new.display_rules
Game.new.user_attribution




