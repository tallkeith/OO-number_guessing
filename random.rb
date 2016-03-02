class RandomPlayer
	def initialize
		@pick
	end

	def pick
		@pick = rand(1..100)
	end
end