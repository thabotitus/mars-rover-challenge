require './mars.rb'

RSpec.describe Mars do
  it "it satifies test case 1" do
    mars = Mars.new(5, 5)
    mars.plot_rover(1, 2, 'N')
    rover = mars.map[1][2]

    case_1.each do |instruction|
      mars.move_rover(rover, instruction)
    end

    expect(rover.current_position).to eq '1,3,N'
  end

  it "it satifies test case 2" do
    mars = Mars.new(5,5)
    mars.plot_rover(3,3,'E')
    rover = mars.map[3][3]

    case_2.each do |instruction|
      mars.move_rover(rover, instruction)
    end
    expect(rover.current_position).to eq '5,1,E'
  end
end

def case_1
  ['L','M','L','M','L','M','L','M','M']
end

def case_2
  ['M','M','R','M','M','R','M','R','R','M']
end