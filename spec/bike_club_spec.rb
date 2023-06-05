require './lib/ride'
require './lib/biker'
require './lib/bike_club'

RSpec.describe BikeClub do 
  before(:each) do
    @bike_club =BikeClub.new("Rolling Cycle")
    @biker1 = Biker.new("Kenny", 30)
    @biker2 = Biker.new("Athena", 15)
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
  end

  describe "#Iteration 3" do
    it "can initialize and has attributes" do

      expect(@bike_club).to be_an_instance_of(BikeClub)
    end

    it "can add bikers to the club" do

      @bike_club.add_roster(@biker1)
      @bike_club.add_roster(@biker2)

      expect(@bike_club.roster).to eq([@biker1, @biker2])
    end

    it 'can return the biker with the most rides' do
      @biker1.log_ride(@ride1, 92.5)
      @biker1.log_ride(@ride1, 91.1)
      @biker1.log_ride(@ride2, 60.9)
      @biker1.log_ride(@ride2, 61.6)

      @biker2.log_ride(@ride1, 97.0)
      @biker2.log_ride(@ride2, 67.0)

      expect(@roster.most_rides).to eq([@biker1])
    end
  end
end