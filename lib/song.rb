class Song
  attr_accessor :all
@@all =[]

def initialize(name, artist, genre)
  @name = name
  @@all << self
end

def self.all
  @@all
end


end
