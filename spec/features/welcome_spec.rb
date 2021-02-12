require 'rails_helper'

RSpec.describe 'When I visit welcome page' do
  it 'should navigate to the search page' do
    visit root_path
    
    select "Fire Nation", :from => "nation"

    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
  end

  it 'should display the number of nation members' do
    visit root_path
    
    select "Fire Nation", :from => "nation"

    click_button 'Search For Members'

    members = 97

    expect(page).to have_content("Total members: #{members}")
  end

  it 'should display the first 25 members' do
    visit root_path
    
    select "Fire Nation", :from => "nation"

    click_button 'Search For Members'

    expect(page).to have_content("Fire Nation company leader")
  end
end