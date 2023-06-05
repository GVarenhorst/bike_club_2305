class BikeClub
  attr_reader :name,
              :roster
              
  def initialize(name)
  @name = name
  @roster = []
  end
end