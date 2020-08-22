# require 'rails_helper'
#
# RSpec.describe 'Shelter show page', type: :feature do
#   describe 'As a visitor' do
#     before :each do
#
#       @shelter_1 = Shelter.create!(name: "Willy's Animal Center",
#                             address: "2020 Whirlwind Dr",
#                             city: "Denver",
#                             state: "CO",
#                             zip: 80014)
#       end
#
#   it "can create a song" do
#     artist = Artist.create(name: "Journey")
#     title = "Don't Stop Believin'"
#     length = 231
#     play_count = 7849
#     # When I visit the page to create a new song as a nested resource
#     # With the path:  /artists/:artist_id/songs/new
#     visit "/artists/#{artist.id}/songs/new"
#     # Then there is a form to add the Title, Length, and Play_Count of a new song
#     fill_in :title, with: title
#     fill_in :length, with: length
#     fill_in :play_count, with: play_count
#
#     click_on "Create Song"
#     # And When I fill this form in and click the Create Song button
#     new_song = Song.last
#     # And the page displays that songs artist, title, length, and play_count
#     expect(current_path).to eq("/songs/#{new_song.id}")
#     expect(page).to have_content(new_song.title)
#     expect(page).to have_content(new_song.length)
#     expect(page).to have_content(new_song.play_count)
#     expect(page).to have_content(artist.name)
#   end
#   end
# end
