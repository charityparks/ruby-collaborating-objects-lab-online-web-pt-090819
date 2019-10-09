class Artist 
  
  attr_accessor :name #self is artist
  
  @@all 
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
    
  def songs
    Song.all.Select {|song| song.artist == self}
  end
 
    
  
end