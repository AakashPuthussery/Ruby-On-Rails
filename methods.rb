# def multiply(num1,num2)
#     return num1.to_f * num2.to_i
# end
# def divide(num1,num2)
#     return num1.to_f / num2.to_f
# end
# def Sum(num1,num2)
#     return num1.to_i + num2 .to_i
# end
# def Diff(num1,num2)
#     return num1.to_i - num2.to_i
# end
# puts "Simple Cacluclator"
# 25.times{print"-"}

# puts " Ente the first number"
# num1 = gets.chomp
# puts "Enter the second number"
# num2 = gets.chomp
# puts "#{multiply(num1,num2)}"
# puts "What doy you want"
# puts "Enter the number 1. Product\n2. Division \n3. Addition \n4. Difference"
# user_input= gets.chomp
# if user_input=="1"
#     puts "You have selected multiplication"
#     result = multiply(num1,num2)
# elsif user_input=="2"
#     puts "you have selected for division"
#     divide(num1,num2)
# elsif user_input == "3"
#     puts "You have selected for addition"
#     result = Sum(num1,num2)   
# elsif user_input == "4"
#     puts "You hvae slected for Sustraction"
#     result = Diff(num1,num2)
# else
#     puts "Invalid Entry"
# end
def multiply(first_number, second_number)
    first_number.to_f * second_number.to_f      
end
   
def divide(first_number, second_number)
    first_number.to_f / second_number.to_f      
end
   
def subtract(first_number, second_number)
    second_number.to_f - first_number.to_f      
end
   
def mod(first_number, second_number)
    first_number.to_f % second_number.to_f      
end
#  Branching execution code sample:
  
puts "What do you want to do? 1) multiply 2) divide 3) subtract 4) find remainder"
prompt = gets.chomp
puts "Enter in your first number"
first_number = gets.chomp
puts "Enter in your second number"
second_number = gets.chomp
if prompt == '1'
    puts "You have chosen to multiply #{first_number} with #{second_number}"
    result = multiply(first_number, second_number)
elsif prompt == '2'
    puts "You have chosen to divide"
    result = divide(first_number, second_number)
elsif prompt == '3'
    puts "You have chosen to subtract"
    result = subtract(first_number, second_number)
elsif prompt == '4'
    puts "You have chosen to find the remainder"
    result = mod(first_number, second_number)
else
    puts "You have made an invalid choice"
end
  