class Artist
  attr_accessor :name, :artist, :genre, :song
@@all = []

def initialize(artist)
  @artist = artist
  @songs = []
  @@all << self

end

def self.all
@@all
end

def new_song(name, genre)
  Song.new(name, self, genre)
end

def name
  @artist
end




end
