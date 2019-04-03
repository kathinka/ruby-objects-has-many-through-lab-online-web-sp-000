class Genre
attr_accessor :song, :artist, :name
@@all = []

def initialize(genre)
@genre = genre
@@all << self
end

def self.all
@@all
end

#def songs
#songs.all.select |song|
#songs.
#end

end