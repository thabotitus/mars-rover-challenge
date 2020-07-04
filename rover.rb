class Rover
  def initialize(pos_x = 0, pos_y = 0, pos_direction = 'N')
    @pos_x = pos_x
    @pos_y =  pos_y
    @pos_direction = pos_direction
  end

  def current_position
    [@pos_x, @pos_y, @pos_direction].join(',')
  end

  def reposition(instruction)
    case instruction
    when 'L'
      turn('L')
    when 'R'
      turn('R')
    else
      move
    end
  end

  private

  def turn(direction)
    @pos_direction = directional_position_map[@pos_direction.to_sym][direction.to_sym]
  end

  def move
    case @pos_direction
    when 'N'
      @pos_y += 1
    when 'E'
      @pos_x += 1
    when 'S'
      @pos_y -= 1
    when 'W'
      @pos_x -= 1
    else
      'Invalid - Self destructing!!!!'
    end
  end

  def directional_position_map
    {
      N: { L: 'W', R: 'E'},
      E: { L: 'N', R: 'S'},
      S: { L: 'E', R: 'W'},
      W: { L: 'S', R: 'N'},
    }
  end
end