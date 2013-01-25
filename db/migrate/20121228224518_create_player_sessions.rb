class CreatePlayerSessions < ActiveRecord::Migration
  def change
    create_table :player_sessions do |t|
      t.integer :player_id
      t.integer :session_id

      t.timestamps
    end
  end
end
