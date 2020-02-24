#Zoo -< Animals
require 'pry'

class Zoo
  attr_reader :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select { |animal|
      animal.zoo == self
    }
  end

  def animal_species
    self.animals.map{ |animal|
      animal.species
    } .uniq
  end

  def find_by_species(species)
    Animal.all.select{ |animal|
      animal.zoo == self
    }.select{|animal|
      animal.species == species
    }
  end

  def animal_nicknames
    self.animals.collect{|animal|
      animal.nickname
    }
  end

  def find_by_location(location)
    @@all.select{|zoo|
      zoo.location == location
    }
  end

end
