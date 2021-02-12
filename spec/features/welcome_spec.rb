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
    expect(page).to have_content("Affiliation: Fire Nation Fire Nation Royal Family")
    expect(page).to have_content("Enemies: Combustion Man")
    expect(page).to have_content("Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
    within "#member-0" do
      expect(page).to have_content("Affiliation: Fire Nation")
    end
    within "#member-24" do
      expect(page).to have_content("Affiliation: Fire Nation Navy")
    end
  end
end