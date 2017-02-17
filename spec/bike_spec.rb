require 'bike'

describe Bike do
  it { is_expected.to respond_to :report_broken_bike }

  it "should update working status after reporting" do
    bike = Bike.new
    bike.report_broken_bike
    expect(bike.working).to eq false
  end

end
