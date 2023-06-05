require './lib/ride'
require './lib/biker'
RSpec.describe Biker do 
  before(:each) do
    @biker1 = Biker.new("Kenny", 30)
    @biker2 = Biker.new("Athena", 15)
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
  end

  describe "#Iteration 2" do
    it "can initialize and has attributes" do
      expect(@biker1).to be_a(Biker)
      expect(@biker2).to be_a(Biker)
      expect(@biker1.name).to eq("Kenny")
      expect(@biker2.name).to eq("Athena")
      expect(@biker1.max_distance).to eq(30)
      expect(@biker2.max_distance).to eq(15)
    end
  end
end