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
    #@@all << song
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def print_songs
    Song.all.each do |song|
      if song.artist == self
        puts song.name
      end
    end
  end

  def self.find_or_create_by_name(musician)
    Artist.all.each do |artiste|
      if artiste.name == musician
        artiste
      else
        new_artiste = Artist.new(musician)
        new_artiste
      end
    end
  end

end
