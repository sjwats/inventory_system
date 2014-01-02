require 'spec_helper'

feature 'a food item is created' do
  scenario 'a food item is created' do
    visit '/'
    click_on 'Add Food Item'
    fill_in 'Title', with: 'Cheese'
    fill_in 'Description', with: 'Smoked Gouda'
    fill_in 'Quantity', with: 3
    click_on 'Submit'
    expect(page).to have_content('Food item added successfully')
  end

  scenario 'a food item cannot be created with blank fields' do
    visit '/'
    click_on 'Add Food Item'
    click_on 'Submit'
    expect(page).to have_content("Title can't be blank")
    expect(page).to have_content("Description can't be blank")
  end

  scenario "can't add food with title that already exists" do
    grub = FactoryGirl.create(:food)
    visit'/'
    click_on 'Add Food Item'
    fill_in 'Title', with: grub.title
    fill_in 'Description', with: "yum"
    fill_in 'Quantity', with: 3
    click_on 'Submit'
    expect(page).to have_content("Title has already been taken")
  end

  require 'spec_helper'

  scenario 'valid food items are listed' do
    grub = FactoryGirl.create(:food)
    visit '/'
    expect(page).to have_content(grub.title)
    expect(page).to have_content(grub.description)
    expect(page).to have_content(grub.quantity)
  end

  # scenario 'a food item cannot have the same description' do
  #   bread_item1 = FoodItem.create(title: 'bread', description: 'whole grain')
  #   visit '/'
  #   click_on 'Add Food Item'
  #   visit '/'
  #   bread_item2 = FoodItem.create(title: 'bread', description: 'whole grain')
  #   click_on 'Add Food Item'
  #   expect(page).to have_content('Invalid food item entry or food item has duplicate description')
  #   FoodItem.destroy_all
  # end

end
