class Game < ActiveRecord::Base
  #attr_accessible :session_id
  has_many :player_games
  has_many :players, :through => :player_games
  belongs_to :session
  accepts_nested_attributes_for :player_games

  def winners
  	players.where("winner = ?", true)
  end

  def losers
  	players.where("winner = ?", false)
  end

  def title
    if game_type = "Single"
  	   "#{winners.first.gamertag} beat #{losers.first.gamertag}"
    elsif game_type = "Double"
      "#{winners.first.gamertag} & #{winners.last.gamertag} beat #{losers.first.gamertag} & #{losers.last.gamertag}"
    else
      ""
    end
  end
end