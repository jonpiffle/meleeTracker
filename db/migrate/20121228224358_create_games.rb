class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :session_id

      t.timestamps
    end
  end
end
