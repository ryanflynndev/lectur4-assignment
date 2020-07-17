require 'pry'
require_relative './app/models/user'
require_relative './app/models/animal'
require_relative './app/models/shelter'


vlad = User.new("Vlad", 21, 1234)
jeff = User.new("Jeff", 21, 1234)
jenn = User.new("Jennifer", 21, 1234, "Jenn")
# jennifer = User.new("Jennifer", 21, 1234, "Jenny")

happy_homes = Shelter.new("Happy Homes Animal Shelter")
slow_and_steady = Shelter.new("Slow and Steady Animals")

bob = Animal.new("snake", "Bob", "hiss", jenn)
coco = Animal.new("dog", "Coco", "bark bark", jeff)
momo = Animal.new("flying lemur", "momo", "slkdfjlsk", jenn)
sophie = Animal.new("husky", "sophie", "woof woof", nil, happy_homes)
julio = Animal.new("turtle", "julio", "turtle noises", nil, slow_and_steady)

binding.pry

