class BikeClub
  attr_reader :name,
              :roster

  def initialize(name)
  @name = name
  @roster = []
  end

  def add_roster(biker)
    @roster << biker
  end

  def most_rides(bikers)
    dedicated_rider = []
    roster.each do |biker|
      biker.log_ride.count
      dedicated_rider << biker.first

    end
  end
end