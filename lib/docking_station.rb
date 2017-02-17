require_relative 'bike'

class DockingStation

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
   fail 'There are no more bikes!' if empty?
   @bikes[0]
  end

  def dock(bike)
    fail "The docking station is full!" if full?
    @bikes << bike
  end

  private

  def empty?
    @bikes == []
  end

  def full?
    @bikes.count == @capacity
  end

end
