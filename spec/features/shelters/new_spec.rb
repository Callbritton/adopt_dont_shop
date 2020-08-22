# require 'rails_helper'
#
# RSpec.describe 'New Shelter', type: :feature do
#   describe 'As a visitor' do
#     describe 'When I visit the new shelter form by clicking a link on the index' do
#       it 'I can create a new shelter' do
#         visit '/shelters'
#
#         click_link 'New Shelter'
#
#         expect(current_path).to eq('/shelters/new')
#
#         fill_in "Name", with: "Willy's Animal Hospital"
#         fill_in "Zip", with: 80014
#         click_on 'Create Shelter'
#
#         expect(current_path).to eq('/shelters')
#         expect(page).to have_content("Willy's Animal Hospital")
#         expect(page).to have_content(80014)
#       end
#     end
#   end
# end
