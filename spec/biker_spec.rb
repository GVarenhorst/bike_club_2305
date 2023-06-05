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

    it "can learn terrain and add to array" do
      @biker1.learn_terrain!(:gravel)
      @biker1.learn_terrain!(:hills)

      expect(@biker1.acceptable_terrain).to eq([:gravel, :hills])
    end

    it 'has a rides hash and can log rides' do
    expect(@biker1.rides).to eq({})

    @biker1.log_ride(@ride1, 92.5)
    @biker1.log_ride(@ride1, 91.1)
    @biker1.log_ride(@ride2, 60.9)
    @biker1.log_ride(@ride2, 61.6)
    
    expected1 = {
      @ride1 => [92.5, 91.1],
      @ride2 => [60.9, 61.6]
    }
    expect(@biker1.rides).to eq(expected1)

    @biker2.log_ride(@ride1, 97.0)
    @biker2.log_ride(@ride2, 67.0)
    require 'pry'; binding.pry
    expect(@biker2.rides).to eq({})
    end
    
  end

end