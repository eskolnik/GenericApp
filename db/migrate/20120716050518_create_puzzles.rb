class CreatePuzzles < ActiveRecord::Migration
  def change
    create_table :puzzles do |t|
      t.integer :user_id
      t.string :title
      t.text :descr
      t.boolean :approved

      t.timestamps
    end
  end
end
