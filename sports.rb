class Sports

  attr_accessor :name, :roster, :coach, :points

  def initialize(team_name, team_players, team_coach)
    @name = team_name
    @roster = team_players
    @coach = team_coach
    @points = 0
  end

  def check_player(name)
    for player in @roster
      if player == name
        return true
      else
        return false
      end
    end
  end

  def add_points(outcome)
    if outcome == "win"
      @points += 5
    elsif outcome == "lose"
      @points -= 5
    end

    def add_player(player_name)
      @roster.push(player_name)
    end 
  end
  # #GETTERS
  #
  # def team_name()
  #   return @name
  # end
  #
  # def team_roster()
  #   return @roster
  # end
  #
  # def team_coach()
  #   return @coach
  # end
  #
  # SETTERS
  #
  # def set_coach_name(name)
  #   @coach = name
  # end
end
