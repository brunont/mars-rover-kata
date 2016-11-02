require File.expand_path(File.dirname(__FILE__) + '/../lib/plateau')

describe Plateau do

  it 'has a maximum X length' do
    plateau = Plateau.new(5, 10)
    expect(plateau.max_x).to eq(5)
  end

  it 'has a maximum Y length' do
    plateau = Plateau.new(15, 20)
    expect(plateau.max_y).to eq(20)
  end

  it 'contains rovers' do
    plateau = Plateau.new(10, 10)
    rover = plateau.new_rover(0, 0, 'N')
    expect(plateau.rovers).to include(rover)
  end

  it 'outputs rovers locations' do
    plateau = Plateau.new(10, 10)
    rover_a = plateau.new_rover(0, 0, 'N')
    rover_b = plateau.new_rover(1, 1, 'E')
    expect(plateau.rovers_locations).to eq("0 0 N\n1 1 E")
  end

end
