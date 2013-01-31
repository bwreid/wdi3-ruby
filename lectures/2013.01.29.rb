# puts "What's your first name?"
# first = gets.chomp.capitalize
# puts "Thanks, #{first}"

# puts "And your last name?"
# last = gets.chomp.capitalize

# puts "Cool. So you're #{first} #{last}."
# full_name = first + ' ' + last

# puts "What's your address?"
# address = gets.chomp

# puts "You're #{full_name} and you live at #{address}."

# puts "How old are you?"
# age = gets.chomp.to_i

# if age >= 21
#  puts "Let's go get a drink then, buddy."
# else
#  puts "Oh, well. Alright then."
# end

# puts "What borough do you live in?"
# borough = gets.chomp.capitalize

# case borough.capitalize
#  when "Bronx"
#    puts "...Where is that?"
#  when "Manhattan"
#    puts "Oh. Aren\'t you fancy."
#  when "Brooklyn"
#    puts "So... can we hang out in Manhattan?"
#  when "Queens"
#    puts "Why?"
# end

# puts "What is 2 to the 2nd power?"
# answer = gets.chomp.to_i

# while answer != 4
#  puts "Oops. Try again."
#  answer = gets.chomp.to_i
# end

# puts "Nice job!"

def area(w,l)
  w * l
end

def volume(w,l,h)
  w * l * h
end

def area_tri(w,h)
  area(w,h) / 2
end

def square(x)
  x*x
end

def cubed(x)
  x**3
end

def insult(first)
  x = rand(3)
  case x
  when 3
    puts "Get it together, #{first}. You look a mess."
  when 2
    puts "Oh, great. It\'s #{first}."
  when 1
    puts "Oh, hi there! What's your last name, #{first}?"
      last = gets.chomp.capitalize
    puts "It\'s #{last}? That\'s a stupid last name."
  else
    puts "I can\'t even be bothered to make fun of you, #{first}."
  end
end

def nice_computer_chat
  print "Hi there! Welcome to our computer party. What's your first name? "
  first = gets.chomp
  insult(first)
end