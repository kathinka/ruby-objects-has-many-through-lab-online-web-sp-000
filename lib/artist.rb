class Artist
  attr_accessor :name, :artist, :genre, :song
  @@all = []

def initialize(name)
  @name = name
  @@all << self

end

def self.all
@@all
end

def new_song(name, genre)
  Song.new(name, self, genre)
end

def name
  @name
end

def songs
  Songs.all.select do |song|
    song.artist == self
  end
end



end
