class Artist 
  attr_accessor :name 
  
  @@song_count = 0
  
   def initialize(name)
    @name = name
    @songs = []
    @@artists << name
  end
  
   def add_song(song)
    @songs << song
    song.artist = self
  end
  
   def songs
    @songs
  end
  
  def add_song_by_name(name)
      song = Song.new(name)
      @songs << song
      song.artist = self
  end
  
  def self.song_count
    total_count = 0
    @@artists.each do |artist|
      count = artist.@songs.count
      total_count += count
    end
  end
    
end