require './mars.rb'

RSpec.describe Mars do
  it "it satifies test case 1" do
    mars = Mars.new(5,5)
    rover = Rover.new(1,2,'N')
    mars.plot_rover(rover)

    case_1.each do |instruction|
      mars.move_rover(rover, instruction)
    end

    expect(rover.current_position).to eq '1,3,N'
  end

  it "it satifies test case 2" do
    mars = Mars.new(5,5)
    rover = Rover.new(3,3,'E')
    mars.plot_rover(rover)

    case_2.each do |instruction|
      mars.move_rover(rover, instruction)
    end
    expect(rover.current_position).to eq '5,1,E'
  end

  it "satifies both rovers on at the same time on bigger map" do
    mars = Mars.new(50,60)
    rover_1 = Rover.new(1,2,'N')
    rover_2 = Rover.new(3,3,'E')

    mars.plot_rover(rover_1)
    mars.plot_rover(rover_2)

    case_1.each do |instruction|
      mars.move_rover(rover_1, instruction)
    end

    case_2.each do |instruction|
      mars.move_rover(rover_2, instruction)
    end

    expect(rover_1.current_position).to eq '1,3,N'
    expect(rover_2.current_position).to eq '5,1,E'
  end
end

def case_1
  ['L','M','L','M','L','M','L','M','M']
end

def case_2
  ['M','M','R','M','M','R','M','R','R','M']
end