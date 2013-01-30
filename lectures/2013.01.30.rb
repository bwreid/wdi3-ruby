# ====================================
# PRY & PRY DEBUGGER
# ====================================

require 'pry'
require 'pry-debugger'

# print "Enter in your first name: "
# first = gets.chomp.capitalize
# print "Enter in your last name: "
# last = gets.chomp
# binding.pry
# last = last.upcase
# puts "Your name is #{first} #{last}."

# ====================================
# ARRAYS
# ====================================

# a = [ 1,3,4,19,4728,32 ]
# b = a[ 1..3 ] # PRINTS [3, 4, 19] >> RANGE
# b = a[ 1, 3 ] # PRINTS [3, 4, 19] >> SPLICING

# x = [ 1, "x", ["z", 12, 9342] ]
# y = x[2] # PRINTS [ "z", 12, 9342 ]
# z = y[2] # PRINTS 9342
# y = x[2][2] # PRINTS 9342

# binding.pry
# a = []
# a.push 3 # PRINTS [3]
# a.push "x" # PRINTS [3, "x"] >> ADDS TO THE BACK
# a.push [ "z","no"] # PRINTS [3, "x", [ "z", "no"] ]
# a.pop #PRINTS [3, "x"] >> TAKES FROM THE BACK
# # UNSHIFT is PUSH, SHIFT is POP; BUT FROM THE FRONT
# a.unshift 1 # PRINTS [1, 3, "x"]
# a.unshift 2 # PRINTS [2, 1, 3, "x"]
# a.shift # PRINTS [1, 3, "x"]

# ====================================
# RANGES & ARRAYS
# ====================================

# a = (2..10).to_a # CREATES AN ARRAY [2, 3, 4, 5, 6, 7, 8, 9, 10]
# a = "This sentence is the best".split # CREATES ["This", "sentence", "is", "the", "best"]
# b = _ # TAKES THE LAST THING THAT WAS DONE AND ASSIGNS TO THIS VARIABLE; WOULD ADD ["This".."best"]

# ====================================
# SYMBOLS
# ====================================

:hello # >> A SYMBOL. IT'S BASICALLY A STRING.

"hello".object_id # >> THIS GIVES YOU A LONG, COMPLICATED NUMBER THAT CHANGES EACH TIME
                  # THEY CAN MEMORY INEFFICIENT
:hello.object_id  # SYMBOLS ARE PLACED IN THE EXACT SAME PLACE, THEIR OBJECT ID IS THE SAME
                  # DIFFERENCE BETWEEN SYMBOLS AND OTHER TYPES IS THAT IT TAKES LESS MEMORY. THAT'S ABOUT IT
"hello".to_sym # CONVERTS TO A SYMBOL, :hello
:hello.to_s # CONVERTS TO A STRING

# ====================================
# HASHES
# ====================================

h = {} # EMPTY HASH
h["frank"] = 20 # THE KEY IS FRANK, THE VALUE IS 20
h["sally"] = 21
h["sue"] = 25
puts h # PUTS {"frank"=>20, "sally"=>21, "sue"=>25}

x = {}
x["frank".to_sym] = 20 # CHANGES STRING TO SYMBOL
x["sally".to_sym] = 21
x["sue".to_sym] = 25
puts x # PUTS {:frank=>20, :sally=>21, :sue=>25}

