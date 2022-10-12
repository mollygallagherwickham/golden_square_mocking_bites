As a user
I want to be able to add tracks to my music library
And view the list of tracks I have

As a user
I want to search for my favourite tracks using a keyword
And view those tracks in a list


## INTEGRATION TESTS ##

# Add track to Music Library
track = Track.new("Purple Rain", "Prince")
musiclibrary = MusicLibrary.new
musiclibrary.add(track)
expect(musiclibrary.all).to eq [track]

# Searches for keyword in the whole library



## UNIT TESTS THAT TEST FULL FUNCTIONALITY WITHOUT NEEDING OTHER CLASSES ##

# Add track to Music Library
musiclibrary = MusicLibrary.new
musiclibrary.add(double(:fake_track, title: "Purple Rain", artist: "Prince"))
expect(musiclibrary.all).to eq ["Purple Rain", "Prince"]

# Searches for keyword in the whole library
musiclibrary = MusicLibrary.new
track_1 = double :track, matches? true
track_2 = double :track, matches? false
musiclibrary.add(track_1)
musiclibrary.add(track_2)
musiclibrary.search(keyword)



## UNIT TESTS ##
# Create track
track = Track.new("Purple Rain", "Prince")


# Returns empty music library
musiclibrary = MusicLibrary.new
expect(musiclibrary.new).to eq []

# Returns true as keyword matches either title or artist
track_1 = Track.new("Yellow Submarine", "The Beatles")
expect(track_1.matches?("Yellow")).to eq true




