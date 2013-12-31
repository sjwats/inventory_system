require 'spec_helper'

describe FoodItem do
  it { should have_valid(:title).when('food') }
  it { should_not have_valid(:title).when(nil,'') }

  it { should have_valid(:description).when('whole grain bread') }
  it { should_not have_valid(:description).when(nil,'') }

  it { should have_one :inventory }
end
