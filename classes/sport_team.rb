class SportTeam
  attr_accessor :team_name, :players, :couch_name, :points
  def initialize(team_name, players, couch_name)
    @team_name = team_name
    @players = players
    @couch_name = couch_name
    @points = 0
  end

# def team_name()
#   return @team_name
# end
#
# def team_players()
#   return @players
# end
#
# def couch_name()
#   return @couch_name
# end

# def set_couch_name(couch_name)
#   @couch_name = couch_name
# end


def new_player(player)
  @players.push(player)
end

def find_player(name)
  for player_name in @players
    if player_name == name
      return true
    end
  end
  return false
end

def update_points(win)
  if win == true
    @points += 1
  end
end



end
