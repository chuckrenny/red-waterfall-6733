require 'rails_helper'

RSpec.describe 'Search for Fire Nation members', type: :feature do
  before :each do
    visit '/'

    select 'Fire Nation', from: 'nation' 
    click_button 'Search For Members'
  end
  # And for each of the members I should see:
  # - The name of the member (and their photo, if they have one)
  # - The list of allies or "None"
  # - The list of enemies or "None"
  it 'allows the user to search for Fire Nation members' do
    expect(current_path).to eq('/search')
    
    expect(page).to have_content('Total Number for Fire nation: 97')
  end

  it 'displays member attributes for the first 25' do
    require 'pry';binding.pry
    expect(page).to have_content("Name: #{@characters.first.name}")
    expect(page).to have_content("Image Tag: #{@characters.first.photoUrl}")
    expect(page).to have_content("Allies: #{@characters.first.allies}")
    expect(page).to have_content("Enemies: #{@characters.first.enemies}")
  end
end
