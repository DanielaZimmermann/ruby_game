
def compute
	number = rand(3)
	choices =  ["paper", "rock", "scissor"]
	@randomChoice = choices[number-1]
end

def choose
	choice = gets.chomp
	case choice.downcase
		when "paper"
			@userChoice = "paper"
		when "rock"
			@userChoice = "rock"	
		when "scissor"
			@userChoice = "scissor"
		when "quit"
			@userChoice = "quit"
			return false
		else
			puts "Sorry not allowed. Try again."
			choose
	end
	puts "User's choice: " + @userChoice
	puts "Computer's choice: " + @randomChoice
end

def decide
	if(@randomChoice == "paper" && @userChoice == "rock")
		puts "Ooooh. You lost against " + @randomChoice + ". Try again."
	elsif(@randomChoice == "paper" && @userChoice == "scissor")
		puts "Yay. You won over " + @randomChoice + ". Do again."
	elsif(@randomChoice == "rock" && @userChoice == "paper")
		puts "Yay. You won over " + @randomChoice + ". Do again."
	elsif(@randomChoice == "rock" && @userChoice == "scissor")
		puts "Ooooh. You lost against " + @randomChoice + ". Try again."
	elsif(@randomChoice == "scissor" && @userChoice == "paper")
		puts "Ooooh. You lost against " + @randomChoice + ". Try again."
	elsif(@randomChoice == "scissor" && @userChoice == "rock")
		puts "Yay. You won over " + @randomChoice + ". Do again."
	end
	play
end

def checkEquality
	if(@randomChoice == @userChoice)
		puts "again please"
		return true
	end
end

def play
	compute
  if(choose)
  	return false
  end
	while(checkEquality)
		compute
		choose
	end
	if(@userChoice == "quit")
		return false
	end
	decide
end

puts "Welcome to the game! Type quit to exit. Let's start."
puts "Do you choose paper, rock or scissor?"
while(play)
	play
end
