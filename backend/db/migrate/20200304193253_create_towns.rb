class CreateTowns < ActiveRecord::Migration[6.0]
  def change
    create_table :towns do |t|
      t.string :name

      t.timestamps
    end
  end
end
