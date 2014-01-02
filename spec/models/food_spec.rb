require 'spec_helper'

describe Food do
  it { should have_valid(:title).when('grub') }
  it { should_not have_valid(:title).when(nil,'') }
  it { should validate_uniqueness_of :title }
  it { should validate_presence_of :title }
  it { should validate_presence_of :description}
  it { should have_valid(:description).when('whole grain bread') }
  it { should_not have_valid(:description).when(nil,'') }

  it { should validate_presence_of :quantity }
  it { should have_valid(:quantity).when(5) }
  it { should validate_numericality_of :quantity }

end
