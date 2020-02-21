require 'pry'


class MP3Importer
  attr_accessor :path
  
  @@all = []
  
  def initialize(path)
    @path = path
    @@all << self
  end
  
  def files
    binding.pry
    Dir.entries(@path).select {|file| file.include?("mp3")}
  end
  
  def self.all
    @@all
  end
  
  
  
end