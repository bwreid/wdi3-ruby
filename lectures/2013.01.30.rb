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

# :hello # >> A SYMBOL. IT'S BASICALLY A STRING.

# "hello".object_id # >> THIS GIVES YOU A LONG, COMPLICATED NUMBER THAT CHANGES EACH TIME
#                   # THEY CAN MEMORY INEFFICIENT
# :hello.object_id  # SYMBOLS ARE PLACED IN THE EXACT SAME PLACE, THEIR OBJECT ID IS THE SAME
#                   # DIFFERENCE BETWEEN SYMBOLS AND OTHER TYPES IS THAT IT TAKES LESS MEMORY. THAT'S ABOUT IT
# "hello".to_sym # CONVERTS TO A SYMBOL, :hello
# :hello.to_s # CONVERTS TO A STRING

# ====================================
# HASHES
# ====================================

# h = {} # EMPTY HASH
# h["frank"] = 20 # THE KEY IS FRANK, THE VALUE IS 20
# h["sally"] = 21
# h["sue"] = 25
# puts h # PUTS {"frank"=>20, "sally"=>21, "sue"=>25}

# x = {}
# x["frank".to_sym] = 20 # CHANGES STRING TO SYMBOL
# x["sally".to_sym] = 21
# x["sue".to_sym] = 25
# puts x # PUTS {:frank=>20, :sally=>21, :sue=>25}

# x.keys # PRINTS ["frank", "sally", "sue"]

# bryanreid = {:first=>"Bryan", :last=>"Reid", :age=>25}
# johnstamos = {:first=>"John", :last=>"Stamos", :age=>34}

# people = {:bryanreid => bryanreid, :johnstamos => johnstamos}

# people[:bryanreid][:last] # PRINTS "REID"
# people[:johnstamos][:age] # PRINTS 34

# puts "What's your first name?"
# first = gets.chomp.downcase
# puts "What's your last name?"
# last = gets.chomp.downcase

# search = first + last # CONCATENATES STRING
# search = search.to_sym # CHANGES IT TO A SYMBOL

# puts "Hi! Here's your age."
# puts people[ search ][:age] # SEARCHES THROUGH SYSTEM WITH THE NEW KEY, AND FINDS AGE

# ====================================
# BLOCKS >> EVERYTHING BETWEEN do AND end or { AND }
# ====================================

a = [1,4,7]

a.each { |i| print i } # PRINTS 147

b = []

a.each do |i| # THIS IS THE SAME THING, A MULTI-LINE BLOCK
  b << i
end

print b # PRINTS [1, 4, 7]

3.times { puts "Hi " } # PUTS "Hi " THREE times
(10.downto 3).to_a # [10, 9, 8, 7, 6, 5, 4, 3]

words = ["hello-friends"]
words.split('-') # PRINTS ["hello", "friends"]
words.join(', ') # PRINTS "hello, friends"

(1..20).select { |i| i.even? } # RETURNS ONLY THOSE THAT FIT THE PARAMETERS
# PRINTS [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

(1..20).reject { |i| i.even? } # RETURNS EVERYTHING EXCEPT THOSE THAT FIT THE PARAMETERS
# PRINTS [1, 3, 5, 7, 9, 11, 13, 15, 17, 29]

(1..10).all? { |i| i > 0 } # DO ALL NUMBERS FIT THIS PARAMETER?
# RETURNS TRUE

(1..10).any? { |i| i > 5 } # ARE ANY OF THESE NUMBERS GREATER THAN 5?
# RETURNS TRUE

(1..10).include? 20 # IS 20 INCLUDED?
# RETURNS FALSE

h = [1,2,[3,4],[5,6],6,7,nil,9,nil]
h.flatten # RETURNS [1, 2, 3, 4, 5, 6, 6, 7, nil, 9, nil]
h.flatten.uniq # RETURNS [1, 2, 3, 4, 5, 6, 7, nil, 9]
h.flatten.uniq.compact # RETURNS [1, 2, 3, 4, 5, 6, 7, 9]
h.flatten.uniq.compact.max # RETURNS 9
h.flatten.uniq.compact.min # RETURNS 1

(1..20).map { |i| i.even? } # RETURNS A NEW ARRAY BASED ON THE PARAMETERS, BASED ON THE OLD ARRAY
# RETURNS [false, true, false, true, false, true...] (up until 20 spots)

(1..10).map { |i| i*i }.reduce(:+) # RETURNS A NEW ARRAY BASED ON THE PARAMETERS, BASED ON THE OLD ARRAY
# FIRST, RETURNS: [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
# THEN, VIA REDUCE, ADDS THEM ALL TOGETHER: 385

(1..10).to_a.shuffle # PRINTS THE ARRAY, SHUFFLED AROUND

(1..10).to_a.sample # PRINTS ONE RANDOM NUMBER

['a', 'b', 'v'].index('v') # PRINTS 1, COUNTS THE NUMBER OF ITEMS THERE

# ====================================
# GIT, REDUX
# ====================================

# Person A creates the repo, then creates and pushes a new branch
# Person B doesn't have that branch. They do:
### git fetch
### git branch --track dev origin/dev
