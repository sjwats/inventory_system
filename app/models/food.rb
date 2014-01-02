class Food < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :description
  validates_presence_of :quantity
  validates_numericality_of :quantity

end
