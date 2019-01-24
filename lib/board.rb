require 'pry'
require_relative 'player'
#require_relative 'boardcase'
#require_relative 'game'

class Board

  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  
  attr_accessor :board1

  	def create_board
  	
  	board = Array.new(10)
  	board1 = board
  	puts "Allez, c'est parti !"
  	puts " "
    puts " "*3 + "1" + "   2" + "   3"
    puts " "*2 + "-"* 10
    puts "A | #{board[1]} | #{board[2]} | #{board[3]} |"
    puts " "*2 + "-"* 10
    puts "B | #{board[4]} | #{board[5]} | #{board[6]} |"
    puts " "*2 + "-"* 10
    puts "C | #{board[7]} | #{board[8]} | #{board[9]} |"
    puts " "*2 + "-"* 10
  end

 #  def get_value_board
	# board[1] = caseid1
	# board[2] = caseid2
	# board[3] = caseid3
	# board[4] = caseid4
	# board[5] = caseid5
	# board[6] = caseid6
	# board[7] = caseid7
	# board[8] = caseid8
	# board[9] = caseid9
 #  end

 #  def play_turn
	# #TO DO : une méthode qui :
 #    player1 = Player.new(get_player1, "x")#1) demande au bon joueur ce qu'il souhaite faire
 #    turn = 1
 #    puts "#{player1.username}, c'est ton tour ! Où veux tu placer ta #{player1.symbol} ?"
 #    print ">"
 #    answer = gets.chomp

    # case answer

    # when "A1" caseid1 = player1.symbol 
    # when "A2" caseid2 = player1.symbol
    # when "A3"
    # when "B1"
    # when "B2"
    # when "B3"
    # when "C1"
    # when "C2"
    # when "C3"	

    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  #end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end

end

