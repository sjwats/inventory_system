class CreateFood < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :quantity, null: false
    end
  end
end
