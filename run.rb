require "pry"

require "./human"
require "./game"
require "./counting"
require "./random"
require "./smart"



game = Game.new(100, SmartPlayer.new)
game.play

