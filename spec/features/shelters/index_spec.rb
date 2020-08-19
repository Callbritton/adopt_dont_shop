require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can see all shelters" do
    shelter_1 = Shelter.create(name: "shelter_1")

    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
    # expect(page).to have_content("Play Count: #{song_1.play_count}")
    # expect(page).to have_content(song_2.name)
    # expect(page).to have_content("Play Count: #{song_2.play_count}")
  end
end
