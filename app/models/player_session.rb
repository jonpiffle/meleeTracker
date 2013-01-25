class PlayerSession < ActiveRecord::Base
  #attr_accessible :player_id
  belongs_to :player 
  belongs_to :session
end
