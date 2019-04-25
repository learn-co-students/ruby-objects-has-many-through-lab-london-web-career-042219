class Song

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name, :artist, :genre

  def initialize(title, artist, genre)
    @name = title
    @artist = artist
    @genre = genre
    @@all << self
  end

end