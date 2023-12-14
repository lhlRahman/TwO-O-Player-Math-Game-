require './player.rb'
require './game.rb'
require './math.rb'

# Asks player names
puts "Enter Player 1's Name"
player1_name = gets.chomp

puts "Enter Player 2's Name"
player1_name = gets.chomp

# Creates player objects with the provided name
player1 = Player.new(player1_name)
player2 = Player.new(player2_name)

# Starts the game by creating player class with the two players
game = Game.new(player1, player2)
game.game_loop