class Team < ApplicationRecord
  has_many :players # def players Player.where(team_id: self.id) end

  def players_whort_more_than(value)
    self.players.where("players.value >= ?", value) # 1000; DROP table players;
  end
end
