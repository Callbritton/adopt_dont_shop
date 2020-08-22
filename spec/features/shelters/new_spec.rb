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

require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'When I visit the new shelter form by clicking a link in the index' do
    it "I can create a new shelter" do
      visit "/shelters"
      click_on 'New Shelter'

      expect(page).to have_current_path "/shelters/new"

      fill_in 'Name', with: 'Denver Animal Shelter'
      fill_in 'Address', with: '1241 W Bayaud Ave'
      fill_in 'City', with: 'Denver'
      fill_in 'State', with: 'CO'
      fill_in 'Zip', with: '80223'
      click_on 'Create Shelter'

      expect(page).to have_current_path "/shelters"
      expect(page).to have_content ('Denver Animal Shelter')
    end
  end
end 
