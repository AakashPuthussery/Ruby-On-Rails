puts "what is our first name?"
first_name = gets.chomp
puts "Thank you, you said your name is #{first_name}"



#String Concatenation

puts "Enter a number to mutiply by 2"
input = gets.chomp
puts input*2


#Convert this into integer

puts "Enter a number to multiply by 2"
input = gets.chomp
puts input.to_i * 2

puts "what is our first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name=gets.chomp
puts " Your full name is #{first_name}"+ "#{last_name}"

# # Reversed full name
puts "Your full name reversed is #{first_name.reverse} " + " #{last_name.reverse}"

#Length of the string

l_first_name=first_name.length
l_last_name = last_name.length
lengthof = l_first_name.to_i + l_last_name.to_i
puts " Your name has #{lengthof} charachters in it"

