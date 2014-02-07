# Part4: RPS
class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    @plays = [game[0][1], game[1][1]]
    raise NoSuchStrategyError unless @plays[0] =~ /[R]|[P]|[S]/ and @plays[1] =~ /[R]|[P]|[S]/
    if @plays[0]==@plays[1]
    	game[0]
    #could also use regex matching here something like /[R][S] | [P][R] | [S][P]/
    elsif (@plays[0]=="R" and @plays[1]=="S") or (@plays[0]=="P" and @plays[1]=="R") or (@plays[0]=="S" and @plays[1]=="P")
    	game[0]
    else
    	game[1]
    end
end
puts "#4\n"
puts rps_game_winner([ ["Armando", "P"], ["Dave", "S"] ])
puts rps_game_winner([["Thing1","R"],["Thing2","R"]])

def rps_tournament_winner(tourn)
	if tourn[0][1] =~ /[R]|[P]|[S]/
		rps_game_winner(tourn)
	else 
		rps_game_winner([rps_tournament_winner(tourn[0]),rps_tournament_winner(tourn[1])])
	end
end
puts rps_tournament_winner([[ ["Armando", "P"], ["Dave", "S"] ],[["Richard", "R"],  ["Michael", "S"]]])
