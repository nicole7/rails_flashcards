class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.boolean :correct?
      t.references :round, foreign_key: true
      t.references :card, foreign_key: true

      t.timestamps
    end
  end
end
