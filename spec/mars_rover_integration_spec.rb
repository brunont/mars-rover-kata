require File.expand_path(File.dirname(__FILE__) + '/../lib/plateau')

describe 'MarsRoverKata' do

  it 'returns expected Kata answer' do
    puts "Entrada para testes:"
    puts plateau = Plateau.new(5, 5)
    puts rover_a = plateau.new_rover(1, 2, 'N')
    puts rover_a.go('LMLMLMLMM')
    puts rover_b = plateau.new_rover(3, 3, 'E')
    puts rover_b.go('MMRMMRMRRM')
    puts
    puts "Saída Esperada:"
    puts plateau.rovers_locations
    expect(plateau.rovers_locations).to eq("1 3 N\n5 1 E")
  end

end
