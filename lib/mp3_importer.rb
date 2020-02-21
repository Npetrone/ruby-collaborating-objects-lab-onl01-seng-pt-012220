class MP3Importer
  attr_accessor :path
  
  @@all = []
  
  def initialize(path)
    @path = path
    @@all << self
  end
  
  def files
    binding.pry
    Dir.entries(@path)
  end
  
  def self.all
    @@all
  end
  
  
  
end