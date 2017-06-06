class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    case player1[1] + player2[1]
    when 'PR', 'SP', 'RS' then player1
    when 'RP', 'PS', 'SR' then player2
    when 'RR', 'PP', 'SS' then player1
    else raise NoSuchStrategyError, "R,P,S only. Please!"
    end
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a?(String)
      winner(tournament[0], tournament[1])
    else
      winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
    end
  end
end