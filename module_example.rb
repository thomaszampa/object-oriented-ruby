class Transportation
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Transportation
  def initialize
    super
    @fuel = 'gas'
    @make = 'Volkswagon'
    @model = 'Jetta'
  end
    
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transportation
  def initialize
    super
    @speed = 'single'
    @type = 'road'
    @weight = '12lbs'
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new 
bike = Bike.new

car.honk_horn
bike.ring_bell