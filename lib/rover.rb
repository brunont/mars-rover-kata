class Rover

  attr_accessor :x, :y, :directions

  def initialize(x, y, initial_direction)
    self.x = x
    self.y = y
    set_initial_direction(initial_direction)
  end

  def direction
    self.directions.first
  end

  def location
    "#{x} #{y} #{direction}"
  end

  def go(path)
    command = path[0]

    case command
    when 'L'
      turn_left
    when 'R'
      turn_right
    when 'M'
      move_forward
    end

    next_commands = path[1..-1]
    go(next_commands) unless next_commands.empty?
    return path
  end

  def to_s
    location
  end

  private

    def turn_left
      self.directions.rotate!(-1)
    end

    def turn_right
      self.directions.rotate!
    end

    def set_initial_direction(initial_direction)
      self.directions = ['N', 'E', 'S', 'W']
      self.directions.rotate!(self.directions.index(initial_direction))
    end

    def move_forward
      case direction
      when 'N'
        self.y += 1
      when 'E'
        self.x += 1
      when 'S'
        self.y -= 1
      when 'W'
        self.x -= 1
      end
    end

end
