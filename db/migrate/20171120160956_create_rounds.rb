class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.references :deck, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
