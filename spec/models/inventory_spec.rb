require 'spec_helper'

describe Inventory do
  it { should validate_presence_of :food_item }

  it { should have_valid(:quantity).when(3, 5) }
  it { should validate_numericality_of :quantity }
end
