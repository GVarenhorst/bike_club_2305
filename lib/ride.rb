class Ride
  attr_reader :name,
              :distance,
              :loop,
              :terrain
  def initialize(info)
    @name = info[:name]
    @distance = info[:distance]
    @loop = info[:loop]
    @terrain = info[:terrain]
  end

  def loop?
    @loop 
  end
  
  def total_distance
    base_distance = @distance
    if loop? == false
      base_distance + base_distance
    else
      base_distance
    end
  end
end