require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do

  # it "can see shelters" do
  #   shelter_1 = Shelter.create(name: "shelter_1")
  #
  #   visit "/shelters"
  #
  #   expect(page).to have_content(shelter_1.name)
  # end

  it "can see shelters address" do
    shelter_1 = Shelter.create(address: "2020 Whirlwind Dr")

    visit "/shelters"

    expect(page).to have_content(shelter_1.address)
  end
end
