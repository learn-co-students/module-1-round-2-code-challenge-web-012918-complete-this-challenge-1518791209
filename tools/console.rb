require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

paul = Viewer.new("Paul")
john = Viewer.new("John")
tom = Viewer.new("Tom")
jason = Viewer.new("Jason")
jim = Viewer.new("Jim")

hallowed = Movie.new("Hallowed")
farewell = Movie.new("Farewell")
inferno = Movie.new("Inferno")
happy = Movie.new("Happy")
success = Movie.new("Success")


paul_hallowed = WatchListing.new(paul, hallowed, 2)
john_farewell = WatchListing.new(john, farewell, 2)
paul_happy = WatchListing.new(paul, happy, 5)
jason_happy = WatchListing.new(jason, happy, 3)
jim_success = WatchListing.new(jim, success, 5)
tom_inferno = WatchListing.new(tom, inferno, 4)






Pry.start
