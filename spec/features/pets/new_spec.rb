require 'rails_helper'

RSpec.describe "creating a new pet" do
  it "can create a pet" do
    shelter = Shelter.create!(name: "Willy's Animal Center",
                          address: "2020 Whirlwind Dr",
                          city: "Denver",
                          state: "CO",
                          zip: 80014)
    name = "Waylon"
    description = "1 year old rottie puppy"
    approximate_age = 1
    # When I visit the shelter pets index page to create a new pet as a nested resource
    # With the path:  '/shelters/:shelter_id/pets/new'
    visit "/shelters/#{shelter.id}/pets/new"
    # Then there is a form to add the name, description, and approximate_age
    fill_in :name, with: name
    fill_in :description, with: description
    fill_in :approximate_age, with: approximate_age

    click_on "Create Pet"

    new_pet = Pet.last
    # And the page displays that pets with name, description, and approximate_age
    expect(current_path).to eq("/pets/#{new_pet.id}")
    expect(page).to have_content(new_pet.name)
    expect(page).to have_content(new_pet.description)
    expect(page).to have_content(new_pet.approximate_age)
    expect(page).to have_content(shelter.name)
  end
end
