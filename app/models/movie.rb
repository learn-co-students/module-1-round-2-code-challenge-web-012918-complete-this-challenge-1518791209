class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def watchlistings
    # returns an array of all the watchlist objects that contain that movie
    WatchListing.all.select {|w| w.movie == self}
  end

  def viewers
    # returns all of the viewers who added this movie to their watchlist
    watchlistings.map {|w| w.viewer}
  end

  def average_rating
    # returns the average of all ratings across all viewers watchlist ratings
    sum = 0
    watchlistings.each {|w| sum += w.rating}
    sum / (watchlistings.count)
  end

  def self.highest_rated
    # should return the movie with the highest average rating across
     # all the viewers watchlistings

     Movie.all.sort_by!{|m| m.average_rating}.last
  end

end
