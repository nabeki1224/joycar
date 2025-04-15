class CreateLists < ActiveRecord::Migration[8.0]
  def change
    create_table :lists do |t|
      t.integer :car_id
      t.integer :price

      t.timestamps
    end
  end
end
