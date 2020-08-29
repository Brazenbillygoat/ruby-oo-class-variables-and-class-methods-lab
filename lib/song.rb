require 'pry'

class Song

  @@song_array = []
  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@song_array.push(self)
    @@count += 1
    @@artists.push(self.artist)
    @@genres.push(self.genre)
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

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] ? genre_count[genre] += 1 : genre_count[genre] = 1
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] ? artist_count[artist] += 1 : artist_count[artist] = 1
    end
    artist_count
  end
end
