require 'pry'
# ==========================================
# OBJECT ORIENTED PROGRAMMING & CLASSES
# ==========================================

# OBJECTS HAVE TWO THINGS: Properties AND Actions
# A CLASS IS A FACTORY THAT PRODUCES PEOPLE

# class Person

# end

# p = Person.new # THERE IS NOW A PERSON-OBJECT CALLED p
# p # IS BOTH A VARIABLE & AN OBJECT

# class Dog
#   def bark
#     puts "bark bark bark!"
#   end
# end

# fido = Dog
# fido.bark # PUTS "bark bark bark!"

# ==========================================
# BASIC SET-UP
# ==========================================

# class Person

#   def set_age(age)
#     @age = age
#   end

#   def get_age
#     puts "I am #{@age}"
#   end

# end

# bryan = Person.new
# bryan.set_age(25)
# bryan.get_age

# ==========================================
# USING INITIALIZE + MORE
# ==========================================

# class Dog
#   def initialize(type, gender, first = "Puppy") # THIS LOADS AUTOMATICALLY ON INITALIZATION
#     @type = type
#     @gender = gender
#     @first = first
#   end

#   def type=(type) # THIS FUNCTION IS CALLED type=
#     @type = type
#   end
#   def type # THIS FUNCTION IS JUST CALLED type
#     puts "ruff ruff ruff! (I'm a #{@type}!)"
#   end

#   def first=(first)
#     @first = first
#   end
#   def first
#     puts "bow wow! (My first name is #{@first})"
#   end

#   def gender=(gender)
#     @gender = gender
#   end
#   def gender
#     puts "grrrruff! (I'm a #{@gender})"
#   end

#   def about
#     puts "bowowowowowowowoowow!"
#     puts "(My name is #{@first} and I'm a #{@gender} #{@type}!)"
#   end

# end

# fido = Dog.new("Terrier", "Boy", "Fido")
# fido.about

# ==========================================
# STREAMLINING THE PROCESS
# ==========================================

class Dog
  attr_accessor :type, :first, :gender # "DOGS" NOW HAS EVERYTHING BELOW WITH LESS CODE!
  def initialize(type, gender, first = "Puppy") # THIS LOADS AUTOMATICALLY ON INITALIZATION
    @type = type
    @gender = gender
    @first = first
  end

  def about
    puts "bowowowowowowowoowow!"
    puts "(My name is #{@first} and I'm a #{@gender} #{@type}!)"
  end

end

fido = Dog.new("Terrier", "Boy", "Fido")
fido.about

binding.pry

# ==========================================
# FUN STUFF WITH PRY
# ==========================================

# YOU CAN CD CHANGE INTO AN OBJECT
# [5] pry(main)> cd fluffy
# [6] pry(#<Dog>):1> ls
# Dog#methods: about  first  first=  gender  gender=  type  type=
# self.methods: __pry__
# instance variables: @first  @gender  @

# YOU CAN DO THIS FOR ANY CLASS! SO ARRAYS, NUMBERS...
# locals: _  __  _dir_  _ex_  _file_  _in_  _out_  _pry_