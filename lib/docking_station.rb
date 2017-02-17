require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
   fail 'There are no more bikes!' if empty?
   @bikes[0]
  end

  def dock(bike)
    fail "There docking station is full!" if full?
    @bikes << bike
  end

  private

  def empty?
    @bikes == []
  end

  def full?
    @bikes.count == 20
  end

end
