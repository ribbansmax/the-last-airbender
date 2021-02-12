require 'rails_helper'

RSpec.describe 'When I visit welcome page' do
  it 'should navigate to the search page' do
    visit root_path
    
    select "Fire Nation", :from => "nation"

    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
  end
end