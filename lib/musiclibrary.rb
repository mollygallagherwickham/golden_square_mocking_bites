# File: lib/music_library.rb

class MusicLibrary
    def initialize
      @tracks = []
    end
  
    def add(track) # track is an instance of Track
      # Track gets added to the library
      # Returns nothing
        @tracks << track
    end
  
    def all
      # Returns a list of track objects
      return @tracks
    end
    
    def search(keyword) # keyword is a string
      # Returns a list of tracks that match the keyword
      return @tracks.select do |track|
        track.matches?(keyword)
      end
    end
  end