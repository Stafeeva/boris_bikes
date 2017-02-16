require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
   fail 'There are no more bikes!' unless @bike
   @bike
  end

  def dock(bike)
    fail "There is already docked bike!" if @bike
    @bike = bike
  end

end
