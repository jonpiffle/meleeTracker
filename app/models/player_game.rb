class PlayerGame < ActiveRecord::Base
  #attr_accessible :character, :game_id, :player_id, :winner
  belongs_to :player
  belongs_to :game


  attr_accessor :player_number

	CHARACTERS = [
		"Bowser",
		"Captain Falcon",
		"Donkey Kong",
		"Dr.Mario",
		"Falco",
		"Fox",
		"Ganondorf",
		"Ice Climbers",
		"Jigglypuff",
		"Kirby",
		"Link",
		"Luigi",
		"Mario",
		"Marth",
		"Mr. Game and Watch",
		"Ness",
		"Peach",
		"Pichu",
		"Pikachu",
		"Roy",
		"Samus",
		"Sheik",
		"Yoshi",
		"Young Link",
		"Zelda"
	]
end
