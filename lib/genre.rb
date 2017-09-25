

class Genre
 extend Concerns::Findable

 attr_accessor :name

 @@all = []

 def initialize(name)
   @name = name
   @songs = []
 end

 def songs
   @songs
 end

 def self.all
   @@all
 end

 def self.destroy_all
   @@all.clear
 end

 def save
   @@all << self
 end

 def artists
   @songs.collect do |song|
     song.artist
   end
 end

end
