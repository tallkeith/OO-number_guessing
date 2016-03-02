class SmartPlayer
	def initialize
		@pick = rand(100)
		@lower = 1
		@higher = 100
	end

	def pick(last)
		if last == :high
			@higher = @pick
			@pick = rand(@lower..@pick)
		elsif last == :low
			@lower = @pick
			@pick = rand(@pick..@higher)
		else
			@pick
		end
	end

end