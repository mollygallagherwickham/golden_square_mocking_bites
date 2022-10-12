require 'musiclibrary'

RSpec.describe MusicLibrary do
    it "returns empty music library" do
        musiclibrary = MusicLibrary.new
        expect(musiclibrary.all).to eq []
    end
    
    it "Adds track to Music Library" do
        musiclibrary = MusicLibrary.new
        track_1 = double :track
        musiclibrary.add(track_1)
        expect(musiclibrary.all).to eq [track_1]
    end

    it "searches and finds track that has keyword" do
        musiclibrary = MusicLibrary.new
        track_1 = double :track
        expect(track_1).to receive(:matches?).with("Yellow").and_return (true)
        track_2 = double :track
        expect(track_2).to receive(:matches?).with("Yellow").and_return (false)
        musiclibrary.add(track_1)
        musiclibrary.add(track_2)
        expect(musiclibrary.search("Yellow")).to eq [track_1]
    end
end