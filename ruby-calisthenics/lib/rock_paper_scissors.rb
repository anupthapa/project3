def rps_tournament_winner(game)
    if game[0][0].class == String
      return rps_game_winner(game)
    else
      return rps_game_winner([rps_tournament_winner(game[0]),rps_tournament_winner(game[1])])
    end
end

def rps_game_winner(game)
  raise WrongNumberOfPlayerError unless game.length == 2

  player1 = game[0][1]  #get the r, p, s
  player2 = game[1][1]  #get the r, p, s

  if player1 == "P" && player2 == "S"
    return game[1]
  elsif player1 == "S" && player2 == "P"
    return game[0]
  elsif player1 == "P" && player2 =="R"
    return game[0]
  elsif player1 == "R" && player2 == "P"
    return game[1]
  elsif player1 == "R" && player2 == "S"
    return game[0]
  elsif player1 == "S" && player2 == "R"
    return game[1]
  elsif (player1 == "S" && player2 == "S") || (player1 == "R" && player2 == "R") || (player1 == "P" && player2 == "P")
    return game[0]
  else
    return "Strategy must be one of R, P, S"
  end
end

arr = [
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]

puts rps_tournament_winner(arr).to_s