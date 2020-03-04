



require "pry"

class Song
  attr_accessor :name, :artist
  @@all = []




  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end



  def self.all
    @@all
  end

  def self.new_by_filename(file)
    # First step is to break up filename into artist, song, genre
    # set a variable name song_name = new_name[1]
    # set a variablt artist_name = new_artist_name = new_name[0]

    # create a new artist with new_aritst
    # create a new song with new_song_name
    new_name = file.chomp(".mp3").split(" - ")
    # binding.pry
    new_song = Song.new(new_name[1])
    new_song.artist_name = new_name[0]
    # new_song.save
    new_song
  end
  
  # def add_song(name)
  #   self.songs << song
  # end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
end
