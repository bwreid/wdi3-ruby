require 'pry'

# ===================================
# EXCEPTION HANDLING
# ===================================

# puts "The results of 3 divided by 0 is #{3/0}."
# THIS, BLOWS UP

# begin # THIS STRUCTURES FIXES VOLATILE CODE
#   puts "What do you want to do?"
#   variable = gets.to_i
#   puts "The results of 3 divided by 0 is #{3/variable}." # AT THIS POINT, IT WILL GO TO RESCUE
# rescue
#   puts "Oops. Something happened." # HERE'S WHAT GETS PRINTED OUT WHEN SOMETHING BREAKS
#   variable = variable + 3
#   puts variable # IT STILL RETAINS WHAT HAPPENED UNTIL IT WORKS
#   puts "Waiting a second to refresh..."
#   # sleep(1) # THIS MAKES YOU WAIT A SECOND BEFORE GOING TO THE NEXT STEP. IT'S IN SECONDS BUT YOU COULD 3.hours AND IT WOULD WORK
#   # retry # THIS WILL TAKE YOU BACK TO BEGIN!
# ensure
#   puts "Something even better." # REGARDLESS OF WHAT HAPPENS, PLEASE DO THIS
# end

# ===================================
# IO
# ===================================

# file = File.new('sample.txt', 'a+') # CREATES FILE 'sample.txt' IN CURRENT PORTFOLIO
#                                     # 'r' >> read from top of file
#                                     # 'w' >> write from top of file
#                                     # 'a+' >> append to end of file

# print "Write info to file? (Y)es or (N)o. "
# response = gets.chomp.downcase

# while response == 'y'
#   print "Enter first name, age, gender: "
#   file.puts gets.chomp # PUTS A STRING INTO THE FILE, FROM gets.chomp

#   print "Write info to file? (Y)es or (N)o. "
#   response = gets.chomp.downcase
# end
# file.close # CLOSES THE FILE

# class Person
#   attr_accessor :name, :age, :gender

#   def initialize(name, age, gender)
#     @name = name
#     @age = age
#     @gender = gender
#   end
#   def to_s
#     "#{@name} is #{@age} years olds and is a #{@gender}."
#   end
# end

# file = File.new('sample.txt', 'r') # YOU'RE JUST READING IT, THEREFORE 'r'
# people = []

# file.each do |line|
#   array = line.chomp.split(', ') # SPLITS OUT THE ', ' >> USING .chomp FIXES THE CARRIAGE RETURN
#   p = Person.new(array[0], array[1], array[2]) # CREATING A NEW PERSON
#   people << p # PUTS PEOPLE INTO AN ARRAY
# end

# binding.pry

# =====================================================
# TEST DRIVEN DEVELOPMENT & RED/GREEN DEVELOPMENT
# =====================================================

# BEFORE WRITING ACTUALY CODE, YOU WRITE TEST CODE WITH WHAT SHOULD BE GOING IN