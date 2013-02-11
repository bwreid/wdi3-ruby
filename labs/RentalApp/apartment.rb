class Apartment
  attr_accessor :name, :sqft, :rent_cost, :renters, :num_bed, :num_bath

  def initialize(name, sqft = rand(500..2000), beds = rand(0..3), bath = rand(1..2))
    @name = name
    @sqft = sqft
    @num_bed = beds
    @num_bath = bath
    @rent_cost = 0
    @renters = []
  end

  def is_occupied?
    @renters.any?
  end

  def to_s
    "#{@name}".color(:red) + ": $#{@rent_cost}. #{@num_bed} bedrooms. #{@num_bath} bathrooms. Rented:" + " #{ @renters.any? ? "Yes" : "No" }".color(:blue)
  end

end