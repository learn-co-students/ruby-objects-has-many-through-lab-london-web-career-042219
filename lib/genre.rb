class Genre

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    # Iterates over all songs and finds songs belonging to this genre
    Song.all.select{|info| info.genre == self}
  end

  def artists
    # Iterates over the genres collection of songs and collects artists that own each song
    self.songs.map{|info| info.artist}
  end

end
