require File.expand_path(File.dirname(__FILE__) + '/../lib/rover')

describe Rover do

  it 'has a starting X coordinate' do
    rover = Rover.new(3, 0, 'N')
    expect(rover.x).to eq(3)
  end

  it 'has a starting Y coordinate' do
    rover = Rover.new(0, 4, 'N')
    expect(rover.y).to eq(4)
  end

  it 'has a starting direction' do
    rover = Rover.new(0, 0, 'E')
    expect(rover.direction).to eq('E')
  end

  it 'outputs own location' do
    rover = Rover.new(0, 0, 'E')
    expect(rover.location).to eq('0 0 E')
  end

  context 'when heading North' do
    let(:rover) { Rover.new(1, 1, 'N') }

    it 'can turn Left' do
      rover.go('L')
      expect(rover.direction).to eq('W')
    end

    it 'can turn Right' do
      rover.go('R')
      expect(rover.direction).to eq('E')
    end

    it 'can move forward' do
      expect{ rover.go('M') }.to change{ rover.y }.from(1).to(2)
    end
  end

  context 'when heading East' do
    let(:rover) { Rover.new(1, 1, 'E') }

    it 'can turn Left' do
      rover.go('L')
      expect(rover.direction).to eq('N')
    end

    it 'can turn Right' do
      rover.go('R')
      expect(rover.direction).to eq('S')
    end

    it 'can move forward' do
      expect{ rover.go('M') }.to change{ rover.x }.from(1).to(2)
    end
  end

  context 'when heading South' do
    let(:rover) { Rover.new(1, 1, 'S') }

    it 'can turn Left' do
      rover.go('L')
      expect(rover.direction).to eq('E')
    end

    it 'can turn Right' do
      rover.go('R')
      expect(rover.direction).to eq('W')
    end

    it 'can move forward' do
      expect{ rover.go('M') }.to change{ rover.y }.from(1).to(0)
    end
  end

  context 'when heading West' do
    let(:rover) { Rover.new(1, 1, 'W') }

    it 'can turn Left' do
      rover.go('L')
      expect(rover.direction).to eq('S')
    end

    it 'can turn Right' do
      rover.go('R')
      expect(rover.direction).to eq('N')
    end

    it 'can move forward' do
      expect{ rover.go('M') }.to change{ rover.x }.from(1).to(0)
    end
  end

end
