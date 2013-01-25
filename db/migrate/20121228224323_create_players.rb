class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :gamertag
      t.string :on_screen

      t.timestamps
    end
  end
end
