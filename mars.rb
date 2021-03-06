require './plateau.rb'
require './rover.rb'

class Mars
  def initialize(width, height)
    @map = Plateau.generate(width, height)
  end

  def plot_rover(rover)
    pos_x, pos_y = get_rover_coords(rover)
    @map[pos_x][pos_y] = rover 
  end

  def move_rover(rover, instruction)
    pos_x, pos_y = get_rover_coords(rover)
    @map[pos_x][pos_y] = nil
    rover.reposition(instruction)

    new_pos_x, new_pos_y = get_rover_coords(rover)
    @map[new_pos_x][new_pos_y] = rover
  end

  private

  def get_rover_coords(rover)
    pos_x, pos_y = rover.current_position.split(',')
    [pos_x.to_i, pos_y.to_i]
  end
end
