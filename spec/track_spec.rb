require 'track'

RSpec.describe Track do
    it "creates track" do
        track = Track.new("Purple Rain", "Prince")
    end

    it "returns true as keyword matches title" do
        track_1 = Track.new("Yellow Submarine", "The Beatles")
        expect(track_1.matches?("Yellow")).to eq true
    end

    it "returns true as keyword matches artist" do
        track_1 = Track.new("Yellow Submarine", "The Beatles")
        expect(track_1.matches?("Beatles")).to eq true
    end

    it "returns false as keyword does not match either title or artist" do
        track_1 = Track.new("Yellow Submarine", "The Beatles")
        expect(track_1.matches?("Blue")).to eq false
    end
end