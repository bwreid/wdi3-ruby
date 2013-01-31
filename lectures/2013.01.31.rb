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
  # THESE ARE INSTANCE METHODS ^^^^^^^
  def initialize(type, gender, first = "Puppy") # THIS LOADS AUTOMATICALLY ON INITALIZATION
    @type = type # THESE ARE INSTANCE VARIABES
    @gender = gender
    @first = first
  end

  def to_s # NOW WHEN YOU JUST TYPE THE VARIABLE NAME, IT PUTS THIS; OR, to_s MAKES A STRING
    "(My name is #{@first} and I'm a #{@gender} #{@type}!)"
  end

  def self.speak # THIS BECOMES A CLASS METHOD; IT COULD ALSO BE Dog.speak
    puts "I am a Dog class. Ruff."
  end

end

# fido = Dog.new("Terrier", "Boy", "Fido")
# maggie = Dog.new("Labrador", "Girl", "Maggie")
# fido # (My name is Fido and I'm a Boy Terrier!)
# fido.to_s # "(My name is Fido and I'm a Boy Terrier!)"

# Dog.speak # RETURNS 'I am a Dog Class. Ruff.'
# YOU CAN DO THIS WHEN YOU WANT THE RESULTS OF A METHOD BUT DON'T WANT TO CREATE A CLASS

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

# ==========================================
# INHERITANCE
# ==========================================

# CLASSES INHERIT METHODS FROM OTHER CLASSES

# class ShowDog < Dog # ShowDog NOW HAS ALL THE PROPERTIES OF Dog
#   def speak
#     puts "I'm a dignified Dog. Ruff."
#   end
# end

# gertrude = ShowDog.new("Fancy", "Girl", "Gertrude")
# gertrude.speak # RETURNS "I'm a dignified dog. Ruff."
# gertrude # RETURNS VALUE (My name is Gertrude and I'm a Girl Fancy!)

# ==========================================
# MODULES
# ==========================================

# YOU CAN "INHERIT" SOME FUNCTIONALITY FROM MULTIPLE SOURCES

module Opine # MODULES ARE JUST LIKE CLASSES BUT YOU CANNOT DO A.new; IT DOES NOT CREATE OBJECTS
  def opine_politics
    puts "Politics these days..."
  end
  def opine_culture
    puts "Today's millenials are the worst..."
  end
end

module Share # YOU CAN INCLUDES MODULES IN CLASSES
  def share_tmi
    puts "This one time, at band camp..."
  end
end

class SmartDog < Dog
  include Share # INCLUDES THE MODULE ABOVE
  include Opine # NOW THESE CAN BE INCLUDED IN SmartDog BUT NOT Dog
end

teddy = SmartDog.new("Shiba Inu", "Boy", "Teddy")
fido = Dog.new("Terrier", "Boy", "Fido")
teddy.share_tmi # RETURNS "This one time, at band camp..."
# fido.share_tmi # RETURNS ERROR

binding.pry