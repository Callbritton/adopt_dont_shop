require 'rails_helper'

RSpec.describe "When I visit '/pets/:id'", type: :feature do
  it "I see the pet with that id" do
    shelter_1 = Shelter.create(
      name: "Willy's Animal Center",
      address: "2020 Whirlwind Dr",
      city: "Denver",
      state: "CO",
      zip: "80056"
    )
    waylon = shelter_1.pets.create(
      image: "",
      name: "Waylon",
      description: "1 year old rottie pup",
      approximate_age: 1,
      sex: "male",
      adoption_status: "available"
    )
    visit "/pets/#{waylon.id}"
    click_link "#{waylon.name}"

    expect(current_path).to eq("/pets/#{waylon.id}")
  end
end
