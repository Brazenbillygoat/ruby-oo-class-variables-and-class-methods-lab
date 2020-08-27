require 'pry'

class Song

  @@song_array = []

  attr_reader :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@song_array.push(self)
  end

  def self.count
    @@song_array.length
  end

  def self.artists
    @@song_array.map { |artist| artist.artist }
  end

  def self.genres
    @@song_array.map { |genre| genre.genre }
  end

  def self.genre_count

  end

end

beautiful = Song.new("great", "Grand", "Wonderful")
binding.pry