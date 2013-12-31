class CreateFoodItemsTable < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :title, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
