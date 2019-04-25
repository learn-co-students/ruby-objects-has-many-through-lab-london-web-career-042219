class Artist

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
  end

  def songs
    Song.all.select { |s| s.artist == self }
  end

  def genres
    songs.map { |song| song.genre }
  end

end