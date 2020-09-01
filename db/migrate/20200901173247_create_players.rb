class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.references :team, null: false, foreign_key: true
      t.string :name
      t.string :position
      t.integer :value
      t.string :photo_url

      t.timestamps
    end
  end
end
