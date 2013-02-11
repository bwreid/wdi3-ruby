require 'pry'
require 'pg'

# conn = PG.connect(:dbname =>'facebook', :host => 'localhost')
# conn.exec( "select * from people" ) do |result|
#   result.each do |row|
#      print row['first']
#      print row['last']
#      binding.pry
#   end
# end
# conn.close

conn = PG.connect(:dbname =>'facebook', :host => 'localhost')
# conn.exec( "select * from people" ) do |result|
#   result.each do |row|

#   end
# end
# conn.close

print 'full name: '
full_name = gets.chomp.downcase.split # returns array
print 'date of birth: '
dob = gets.chomp
print 'relationship: '
rel_status = gets.chomp.downcase
# print 'number of friends: '
# friends = gets.to_i
print 'city: '
city = gets.chomp.downcase

sql = "insert into people (first, last, dob, rel_status, city) values ('#{full_name.first}', '#{full_name.last}', '#{dob}', '#{rel_status}', '#{city}')"
binding.pry

conn.exec(sql)
conn.close
