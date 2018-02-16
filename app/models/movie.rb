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
    sum = 0
    watchlistings.each do |list|
      sum += list.rating
    end
    sum/viewers.length
    #returns average of all ratings across viewers
  end

  def highest_rated
    all_movie = WatchListing.all.map do |list|
     list.movie
     end
     uniq_movie = all_movie.uniq
     uniq_movie.each do |movie|
       movie.average_rating 

     binding.pry
     # each_movie.all.map.do |movie|
     # movie.average_rating
   # end

     #sort array desc, take first oen
    #return movie with highest average across viewers watchlistings
  end

end
