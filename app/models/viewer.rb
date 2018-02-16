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
      Watchlist.new(movie, self)
    end
#receive array of one or more movie instances and add to viewers watchlist
  end

  def rate_movie(movie, rating)
    Watchlisting.new(self, movie, rating)
    #the rating and movie should be assigned to the current individual viewers instance.
  end

end
