class CreateBreakfastCereals < ActiveRecord::Migration[5.2]
  def change
    create_table :breakfast_cereals do |t|
      t.string :name
      t.integer :sugar
      t.string :toy
      t.string :company

      t.timestamps
    end
  end
end
