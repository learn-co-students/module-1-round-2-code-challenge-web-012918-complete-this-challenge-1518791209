class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    #returns an array of all movies
    @@all
  end

  def watchlistings
    WatchListing.all.select do |list|
      list.movie == self
    end
#return array of ALL watchlist objects for the movie
  end

  def viewers

    watchlistings.map do |movie|
    movie.viewer
    end

    #return all viewers who added this movie
  end

  def average_rating
    # What if my watchlist doesn't have a rating?
    # What do I do?


    sum = 0
    watchlistings.each do |list|
      sum += list.rating
    end

    sum / viewers.length
    # Allows floating point division
    # (sum * 1.0) / (viewers.length)
    #returns average of all ratings across viewers
  end

  def self.highest_rated
    all_movie = WatchListing.all.map do |list|
      list.movie
    end
    # i = 0
    # mov = nil
    uniq_movie = all_movie.uniq
    uniq_movie.sort_by { |movie| movie.average_rating }[-1]
    # uniq_movie.each do |movie|
    #   if movie.average_rating > i
    #     i = movie.average_rating
    #     mov = movie
    #   end
    # end

    # mov

     #sort array desc, take first oen
    #return movie with highest average across viewers watchlistings
  end

end
