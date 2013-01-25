class Session < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :player_sessions
  has_many :players, :through => :player_sessions
  has_many :games
  has_many :player_games, :through => :games
  accepts_nested_attributes_for :games, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :player_sessions, :reject_if => :all_blank, :allow_destroy => true
end