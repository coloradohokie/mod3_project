class CreatePaths < ActiveRecord::Migration[6.0]
  def change
    create_table :paths do |t|
      t.references :town, foreign_key: true
      t.string :destination
      t.string :overview
      t.string :description
      t.string :difficulty
      t.string :url
      t.integer :time
      t.integer :distance

      t.timestamps
    end
  end
end
