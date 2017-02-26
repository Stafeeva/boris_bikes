require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  describe '#release_bike' do
    it "docking station raises error when there are no bikes to release" do
      expect { subject.release_bike }.to raise_error("There are no more bikes!")
    end
  end

  describe '#dock' do
    it "raises an error when there is already docked bike" do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(double(:bike))}
      expect { subject.dock(double(:bike)) }.to raise_error("The docking station is full!")
    end
  end

  describe '#dock' do
    it 'should ....' do
      station = DockingStation.new(10)
      10.times { station.dock(double(:bike)) }
      expect { station.dock(double(:bike)) }.to raise_error("The docking station is full!")
    end
  end

end
