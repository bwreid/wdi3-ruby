class Building
  attr_accessor :address, :apartments, :has_doorman, :num_floors, :style, :is_walkup

  def initialize(floors, style, address = "333 Main Street", doorman = false, walkup = true)
    @floors = floors
    @style = style
    @address = address
    @num_floors = floors
    @has_doorman = doorman
    @is_walkup = walkup
    @apartments = {}
  end

  def to_s
    "This building is at #{@address} and has #{@apartments.count} apartments with #{@num_floors} floors."
  end

end