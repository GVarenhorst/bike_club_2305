class Biker
  attr_reader :name,
              :max_distance,
              :rides,
              :acceptable_terrain
  
  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = Hash.new { |h, k| h[k] = [] }
    @acceptable_terrain = []
  end

  def learn_terrain!(terrain)
    @acceptable_terrain << terrain
  end

  def log_ride(name, ride_time)
    if @acceptable_terrain.include?(ride[:terrain])
    @rides[name] << ride_time
    else
      nil
    end
  end
end