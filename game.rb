
require "pry"

class Game
  def initialize(max, player)
    @max = max
    @player = player
    @last = nil
  end

  def play
    answer = rand(@max)
    puts "Please guess a number between 1 and #{@max}."
    binding.pry
    guess = @player.pick(@last)
    puts "They guessed: #{guess}"
    until guess == answer
      sleep 0.25
      if guess > answer
        puts "Too High, guess again."
        @last = :high
      else
        puts "Too Low, guess again."
        @last = :low
      end
      guess = @player.pick(@last)
      puts "They guessed: #{guess}"
    end
    puts "Congratulations."
  end
end