require "pry"

require "./human"
require "./game"
require "./counting"
require "./random"

binding.pry

game = Game.new(100, RandomPlayer.new)
game.play

