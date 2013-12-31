class FoodItem < ActiveRecord::Base
  has_one :inventory,
    inverse_of: :food_item
  validates_presence_of :title
  validates_presence_of :description

end
