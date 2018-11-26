require 'pry'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def new(name)
    artist = Artist.new(name)
    artist.name = name
    artist
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song_new = Song.new(name)
    @songs << song_new
    song_new.artist = self
  end

  def self.song_count #not working
    Song.all.length
  end

end
