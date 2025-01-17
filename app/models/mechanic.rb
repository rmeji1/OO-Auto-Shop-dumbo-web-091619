class Mechanic
  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self

  end

  def cars 
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def owners 
    self.cars.map(&:owner).uniq
  end

  def owner_names
    self.owners.map(&:name)
  end

  def self.all
    @@all
  end
end
