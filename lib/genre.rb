class Genre
attr_accessor :song, :artist, :name
@@all = []

def initialize(name)
@name = name
@@all << self
end

def self.all
@@all
end

def name
@name
end

def genres
Song.map do |songs|
  song.genre
end

end
