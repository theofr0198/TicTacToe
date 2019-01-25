# frozen_string_literal: true

require 'pry'
require_relative 'boardcase'

class Board
  attr_accessor :turn

  def create_board
    board = Array.new(9, BoardCase.new.content)
    puts "Allez, c'est parti !"
    puts ' '
    return board
  end


  def display_board(board)
    puts ' ' * 3 + '1' + '   2' + '   3'
    puts ' ' * 2 + '-' * 10
    puts "A | #{board[0]} | #{board[1]} | #{board[2]} |"
    puts ' ' * 2 + '-' * 10
    puts "B | #{board[3]} | #{board[4]} | #{board[5]} |"
    puts ' ' * 2 + '-' * 10
    puts "C | #{board[6]} | #{board[7]} | #{board[8]} |"
    puts ' ' * 2 + '-' * 10
  end



  def play_turn (nomjoueur, symboljoueur, board)
    answerok = 0
    while answerok == 0 do
      puts "#{nomjoueur}, c'est ton tour ! Où veux tu placer ta #{symboljoueur} ?"
      print '>'
      answer = gets.chomp


      while answer != "A1" && answer != "A2" && answer != "A3" && answer != "B1" && answer != "B2" && answer != "B3" && answer != "C1" && answer != "C2" &&  answer != "C3" do
        puts "Vous ne pouvez utiliser que les valeurs de ligne suivi de colonne. Par exemple 'A1' ou 'B2', etc."
        answer = gets.chomp
      end

        case answer
          when "A1"
            if board[0] == "" then
              board[0] = symboljoueur
              answerok = 1
            else
              puts "Cette case est déjà utilisée"
            end
          when "A2"
            if board[1] == "" then
              board[1] = symboljoueur
              answerok = 1
            else
              puts "Cette case est déjà utilisée"
            end
          when "A3"
            if board[2] == "" then
              board[2] = symboljoueur
              answerok = 1
            else
              puts "Cette case est déjà utilisée"
            end
          when "B1"
            if board[3] == "" then
              board[3] = symboljoueur
              answerok = 1
            else
              puts "Cette case est déjà utilisée"
            end
          when "B2"
            if board[4] == "" then
              board[4] = symboljoueur
              answerok = 1
            else
              puts "Cette case est déjà utilisée"
            end
          when "B3"
            if board[5] == "" then
              board[5] = symboljoueur
              answerok = 1
            else
              puts "Cette case est déjà utilisée"
            end
          when
             "C1"
            if board[6] == "" then
              board[6] = symboljoueur
              answerok = 1
            else
              puts "Cette case est déjà utilisée"
            end
          when "C2"
            if board[7] == "" then
              board[7] = symboljoueur
              answerok = 1
            else
              puts "Cette case est déjà utilisée"
            end
          when "C3"
            if board[8] == "" then
              board[8] = symboljoueur
              answerok = 1
            else
              puts "Cette case est déjà utilisée"
            end
      end
    end
  end

  def game_end(turn, board)
    if ((board[0] == board[1]) && (board[1] == board[2])) || ((board[3] == board[4]) && (board[4] == board[5])) || ((board[6] == board[7]) && (board[7] == board[8])) || ((board[0] == board[3]) && (board[3] == board[6])) || ((board[1] == board[4]) && (board[4] == board[7])) || ((board[2] == board[5]) && (board[5] == board[8])) || ((board[2] == board[4]) && (board[4] == board[6])) || ((board[0] == board[4]) && (board[4] == board[8])) then
      return 1
    else
      return 0
    end
  end
end
