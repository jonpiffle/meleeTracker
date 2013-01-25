class Player < ActiveRecord::Base
  #attr_accessible :gamertag, :on_screen
  has_many :player_games
  has_many :games, :through => :player_games
end
