class Inventory < ActiveRecord::Base
  belongs_to :food_item, #because foreign key in this table
    inverse_of: :inventory

  validates_presence_of :food_item
  validates_numericality_of :quantity


end
