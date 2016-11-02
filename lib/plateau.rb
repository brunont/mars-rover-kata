class Plateau

  attr_accessor :max_x, :max_y, :rovers

  def initialize(x, y)
    self.max_x = x
    self.max_y = y
    self.rovers = []
  end

  def new_rover(x, y, initial_direction)
    rover = Rover.new(x, y, initial_direction)
    self.rovers << rover
    return rover
  end

  def rovers_locations
    self.rovers.map(& :location).join("\n")
  end

  def to_s
    "#{max_x} #{max_y}"
  end

end
