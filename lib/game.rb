# frozen_string_literal: true

require 'pry'
require_relative 'player'
require_relative 'board'

class Game



  def display_rules #display the rules of the game
    puts ' '
    puts ' ' * 18 + '-' * 39
    puts ' ' * 20 + 'Salut, bienvenue dans tic tac toe !'
    puts ' ' * 18 + '-' * 39
    puts ' '
    puts 'Regles du jeu :'
    puts "Pour jouer une partie de morpion, vous disposerez d'une grille de 3 cases sur 3 (selon les variantes, il est possible d’augmenter le nombre de cases).
		Le but du jeu est d’aligner avant son adversaire 3 symboles identiques
		horizontalement, verticalement ou en diagonale."
    puts ' '
    puts 'Nous allons vous definir un symbole, une croix pour l’un et un rond pour l’autre'

    'La partie se termine quand l’un des joueurs à aligner 3 symboles ou quand la grille est complétée sans vainqueur. Il y a alors égalité.'
    puts ' '
    puts ' ' * 29 + '-' * 16
    puts ' ' * 31 + "C'est parti !"
    puts ' ' * 29 + '-' * 16
    puts ' '
  end

  def user1_attribution #ask the name of player 1 and give it a symbol X
    puts 'Quel est le nom du Joueur 1 ?'
    print '>'
    get_player = gets.chomp
    @playerone = Player.new(get_player, 'x')
    puts ' '
    puts "Bienvenue #{@playerone.username}, tu auras le signe '#{@playerone.symbol}' !"
    return @playerone
  end

  def user2_attribution #ask the name of player 2 and give it a symbol O
    puts 'Quel est le nom du Joueur 2 ?'
    print '>'
    get_player = gets.chomp
    @playertwo = Player.new(get_player, 'o')
    puts ' '
    puts "Bienvenue #{@playertwo.username}, tu auras le signe '#{@playertwo.symbol}' !"
    return @playertwo
    puts ' '
    puts ' '
  end

  def game_on(joueur1,joueur2, board)

    turn = 1
    result = 0
    while turn < 10 || result == 1
      Board.new.display_board(board)
      if turn.even?
        Board.new.play_turn(joueur2.username, joueur2.symbol, board)
        result = Board.new.game_end(turn, board)
        if result == 1
          puts "Victoire, #{joueur2.username}!!"
        end
      else
        Board.new.play_turn(joueur1.username, joueur1.symbol, board)
        result = Board.new.game_end(turn, board)
        if result == 1
          puts "Victoire, #{joueur1.username}!!"
        end
      end
      turn += 1
    end
    unless result == 1 then
      puts "Vous êtes ex-equo ! Bien joué."
    end
    puts "Merci d'avoir joué !"
  end

end


Game.new.display_rules
joueur1 = Game.new.user1_attribution
joueur2 = Game.new.user2_attribution
board = Board.new.create_board
Game.new.game_on(joueur1,joueur2, board)
