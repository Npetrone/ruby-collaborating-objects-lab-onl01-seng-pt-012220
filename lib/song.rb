require 'pry'

class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  def self.new_by_filename(file)
    
    name = file.split(" - ")
    new_song = Song.new(name[1])
    new_song.artist_name = name[0]
    new_song
    
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
end