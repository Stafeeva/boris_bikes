require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
   fail 'There are no more bikes!' if @bikes == []
   @bikes[0]
  end

  def dock(bike)
    fail "There docking station is full!" if @bikes.count == 20
    @bikes << bike
  end

end
