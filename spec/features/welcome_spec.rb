require 'rails_helper'

RSpec.describe 'When I visit welcome page' do
  xit 'should navigate to the search page' do
    visit root_path
    
    select "fire_nation", :from => "nation"

    click_button 'Search For Members'
  end
end