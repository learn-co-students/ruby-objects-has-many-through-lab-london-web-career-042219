require 'pry'
class Artist

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    # Takes the arguments name and genre to create a new song.
    # The song knows it belongs to this artist.
    Song.new(name, self, genre)
  end

  def songs
    # Iterates through all songs and finds only the songs belonging to said artist.
    Song.all.select{|info| info.artist == self}
  end

  def genres
    # Iterates over artists songs and collects the genre for each song.
    self.songs.map{|info| info.genre}
  end

end

# binding.pry
# "Mischief Managed"
