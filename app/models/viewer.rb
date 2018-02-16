class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def add_to_watchlist(movies)
    # this method should receive an array of one or more movie instances
    # and add them to the viewer's watchlisting

    movie = movies.map {|m| m}

    WatchListing.new(self, movie, rating)
  end

  def rate_movie(movie, rating)
    # given a movie on a viewer's watchlisting and a rating (a number
    # between 1 and 5), assign the rating to the movie. Where should the
    # rating that an individual viewer gives to an individual movie be stored?
    WatchListing.new(self, movie, rating)
  end



end
