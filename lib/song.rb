class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
   def initialize(name)
    @name = name
    @@all << name
  end
  
  def self.all
    @@all
    
    def artist_name
      self.artist.name
    end
end