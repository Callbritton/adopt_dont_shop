require 'rails_helper'

RSpec.describe "pets index page", type: :feature do

  it "can see pets" do
    shelter_1 = Shelter.create!(name: "shelter_1", address: "123 blvd",
                               city: "testville", state: "WY", zip: 12345)
    pet_1 = Pet.create!(image: "", name: "Waylon", approximate_age: 1,
                        sex: "male", shelter: shelter_1)

    visit "/pets"

    expect(page).to have_content(pet_1.name)
  end

end
