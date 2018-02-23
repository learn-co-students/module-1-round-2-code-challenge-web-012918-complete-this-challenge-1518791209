require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

york = Viewer.new("york")
wang = Viewer.new("wang")
terrance = Viewer.new("terrance")
niky = Viewer.new("niky")
red_bull = Movie.new("red bull")
flatiron = Movie.new("flatiron")
WatchListing.new(york, red_bull)
WatchListing.new(wang, flatiron)
WatchListing.new(terrance, red_bull)
WatchListing.new(niky, red_bull)

york.rate_movie(red_bull, 4)
wang.rate_movie(flatiron, 2)
terrance.rate_movie(red_bull, 5)
niky.rate_movie(red_bull, 1)

Pry.start
