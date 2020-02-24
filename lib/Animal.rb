#Zoo -< Animals
require 'pry'
class Animal
  attr_reader :name, :species, :weight, :nickname, :zoo

  @@all = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def find_by_species(species)
    Animal.all.select{ |animal|
      animal.species == self.species
    }
  end

end
