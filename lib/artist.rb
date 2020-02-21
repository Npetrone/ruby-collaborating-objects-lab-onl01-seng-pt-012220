require 'pry'

class Artist
  attr_accessor :name
  
  @@all = []
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def add_song(song)
   # self.songs << song
    song.artist = self
  #  @@song_count += 1
  
  end
  

  
  
  
end