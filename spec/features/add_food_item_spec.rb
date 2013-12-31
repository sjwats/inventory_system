require 'spec_helper'

feature 'a food item is created' do
  scenario 'a food item is created' do
    visit '/'
    click_on 'Add Food Item'
    fill_in 'Title', with: 'Cheese'
    fill_in 'Description', with: 'Smoked Gouda'
    click_on 'Submit'
    expect(page).to have_content('Food item added successfully')
  end

end
