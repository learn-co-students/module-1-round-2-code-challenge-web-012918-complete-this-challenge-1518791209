class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    #returns all the viewers
    @@all
  end

  def add_to_watchlist(movies)
    movies.each do |movie|
      WatchListing.new(self,movie)
    end
#receive array of one or more movie instances and add to viewers watchlist
  end

  def watchlistings
    WatchListing.all.select{ |watchlist|
      watchlist.viewer.username == self.username
    }
  end

  def rate_movie(movie, rating)
    # All watchlists that a viewer has
    # From those watchlists, find the movie
    # Give it a rating
    movie = watchlistings.find{ |watchlist|
      watchlist.movie.title == movie.title
    }

    if movie != nil
      movie.rating = rating
    end


    # Watchlisting.new(self, movie, rating)
    #the rating and movie should be assigned to the current individual viewers instance.
  end

end
