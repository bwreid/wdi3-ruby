require 'pry'
require 'rainbow'

require_relative 'building'
require_relative 'apartment'
require_relative 'person'

main_building = Building.new(3, "Modern")

a1 = Apartment.new("A1")
a2 = Apartment.new("A2")
a3 = Apartment.new("A3")
b1 = Apartment.new("B1")
b2 = Apartment.new("B2")
b3 = Apartment.new("B3")

main_building.apartments[:A1] = a1
main_building.apartments[:A2] = a2
main_building.apartments[:A3] = a3

sally = Person.new("Sally", "female")
albert = Person.new("Albert", "male")
bob = Person.new("Bob", "male")
cyndi = Person.new("Cyndi", "female")
alexis = Person.new("Alexis", "female")
roger = Person.new("Roger", "male")

c = 0

5.times do
  c = c + 1
  main_building.apartments["C#{c}".to_sym] = Apartment.new("C#{c}")
end

binding.pry

# ========================================
# ACTUAL PROJECT vvvvvvvv
# ========================================

# print "Build an (a)partment, (b)uilding, (p)erson or (q)uit: "
# response = gets.chomp.downcase

# building = nil

# while response != 'q'

#   if response == 'p'

#     print "Name: "
#     name = gets.chomp

#     print "Age: "
#     age = gets.to_i

#     print "Gender: (m/f)"
#     gender = gets.chomp
#     if gender.include? "f"
#       gender = "female"
#     else
#       gender = "male"
#     end

#     print "Where do you want to live?: "
#     apt = gets.chomp

#     binding.pry
#     building.apartments[apt.to_sym].renters << Person.new(name, gender, age)
#     puts "#{building.apartments[apt.to_sym].renters[0].name} now lives in Apartment #{building.apartments[name.to_sym].name}"
#     gets

#   elsif response == 'a'
#     print "Name: "
#     name = gets.chomp

#     print "SqFt: "
#     sqft = gets.to_i

#     building.apartments[name.to_sym] = Apartment.new(name, sqft)

#   elsif response == 'b'
#     building = Building.new(14,'Modern')
#     puts building
#   end

#   puts `clear`
#   print "Build an (a)partment, (b)uilding, (p)erson or (q)uit: "
#   response = gets.chomp.downcase

# end