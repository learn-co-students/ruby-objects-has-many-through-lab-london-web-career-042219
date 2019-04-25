class Genre

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select { |s| s.genre == self }
  end

  def artists
    songs.map { |s| s.artist }
  end

end