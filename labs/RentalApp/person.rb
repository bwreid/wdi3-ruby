class Person
  attr_accessor :name, :age, :gender, :apartment
  def initialize(name, gender, age = rand(18..80))
    @name = name
    @gender = gender
    @age = age
  end

  def to_s
    "#{name}".color(:blue) + " is a #{age} year old #{gender}."
  end

end