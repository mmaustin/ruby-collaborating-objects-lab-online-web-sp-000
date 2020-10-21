class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @@all << song
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist.name == self}
  end

end
