require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike

      end
    end

  it "returns a new instance of Bike.new" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)[0]).to eq bike
  end

  it 'return docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes[0]).to eq bike
  end

  describe '#release_bike' do
    it "docking station raises error when there are no bikes to release" do
      expect { subject.release_bike }.to raise_error("There are no more bikes!")
    end
  end

  describe '#dock' do
    it "raises an error when there is already docked bike" do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
      expect { subject.dock(Bike.new) }.to raise_error("The docking station is full!")
    end
  end

  describe '#dock' do
    it 'should ....' do
      station = DockingStation.new(10)
      10.times { station.dock(Bike.new) }
      expect { station.dock(Bike.new) }.to raise_error("The docking station is full!")
    end
  end

end
