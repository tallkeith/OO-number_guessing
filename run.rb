require "pry"

require "./human"
require "./game"
require "./counting"
require "./random"



game = Game.new(100, RandomPlayer.new)
game.play

