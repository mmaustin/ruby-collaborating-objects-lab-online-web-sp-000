class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    song = self.new
    song.artist = filename.split(" - ")[0]
    song.name = filename.split(" - ")[1]
    song
  end

  def artist_name=(name)
    Artist.all.find {|artist| artist.name == name} || song.artist = Artist.new(name)
  end

end
