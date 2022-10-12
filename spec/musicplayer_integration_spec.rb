require 'musiclibrary'
require 'track'

RSpec.describe "Music Player integration" do
    it "Adds track to Music Library" do
        track = Track.new("Purple Rain", "Prince")
        musiclibrary = MusicLibrary.new
        musiclibrary.add(track)
        expect(musiclibrary.all).to eq [track]
    end
end