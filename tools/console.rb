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
WatchListing.new(york, red_bull, 8)
WatchListing.new(wang, flatiron, 7)
WatchListing.new(terrance, red_bull, 9)
WatchListing.new(niky, red_bull, 10)

Pry.start
