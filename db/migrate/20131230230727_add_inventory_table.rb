class AddInventoryTable < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :food_item_id, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
