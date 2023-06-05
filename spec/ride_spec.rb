require './lib/ride'

RSpec.describe Ride do 
  before(:each) do
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
  end
  describe '#initialize' do
    it 'exists' do

      expect(@ride1).to be_a(Ride)
      expect(@ride2).to be_a(Ride)
    end

    it "can initialize and has attributes" do

      expect(@ride1.name).to eq("Walnut Creek Trail")
      expect(@ride2.name).to eq("Town Lake")
      expect(@ride1.terrain).to eq(:hills)
      expect(@ride2.terrain).to eq(:gravel)

    end
  end
end