class CreatePlayerGames < ActiveRecord::Migration
  def change
    create_table :player_games do |t|
      t.integer :player_id
      t.integer :game_id
      t.string :character
      t.boolean :winner

      t.timestamps
    end
  end
end
