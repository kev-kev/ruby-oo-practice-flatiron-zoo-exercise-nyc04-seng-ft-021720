require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


  bronx_zoo = Zoo.new("bronx zoo", "NYC")
  national_zoo = Zoo.new("national zoo", "DC")
  dc_panda = Animal.new("giant panda", 200, "Bei Bei", national_zoo)
  nyc_panda = Animal.new("smol panda", 1, "lil bub", bronx_zoo)
  dc_giraffe = Animal.new("Giraffa", 50, "Stubby boi", national_zoo)
  nyc_giraffe = Animal.new("Giraffa", 992, "Gwyneth Paltro", bronx_zoo)

binding.pry
puts "done"
