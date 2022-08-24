# Loop - loop through a code until condition is met 
# iterators - go through each item of an array or hash. 

# num = 10 

# while num > 0
#   puts num 
#   puts "Hello"
#   num -= 2 
# end

# puts "1. to create"
# puts "2. to update"
# puts "3. to exit"
# user_input = gets.strip.to_i

# while true
#   if user_input == 1 || user_input == 2 || user_input == 3 
#     break
#   end
#   puts "Error must chose 1, 2, 3"
#   user_input = gets.strip.to_i
# end

# recursion
# def menu
#   puts "1. to create"
#   puts "2. to update"
#   puts "3. to exit"
#   user_input = gets.strip.to_i

#   if user_input == 1 || user_input == 2 || user_input == 3 
#     puts "more options"
#   else 
#     puts "Error must chose 1, 2, 3"
#     menu
#   end
# end



# names = ['bob', 'jack', 'jill']

# puts names[0]
# puts names[0] + '!'
# puts names[0].upcase

# puts names[1]
# puts names[1] + '!'
# puts names[1].upcase

# puts names[2]
# puts names[2] + '!'
# puts names[2].upcase

# names.each do |name| 
#   puts name
#   puts name + '!'
#   puts name.upcase
# end

cars = [
  { make: 'Ford', model: 'focus', year: 2000, mileage: 12344 },
  { make: 'Subarau', model: 'outback', year: 2010, mileage: 34422 },
  { make: 'Toyota', model: 'prius', year: 2000, mileage: 14222 }
]

# total_mileage = 0

# cars.each do |car|
#   # puts car
#   # puts "#{car[:make]} #{car[:model]}"
#   # puts car[:make] + " " + car[:model]
#   total_mileage += car[:mileage]
#   # total_mileage = total_mileage + car[:mileage]
# end

# puts total_mileage

cars.each_with_index do |car, index|
  puts "#{index + 1} - #{car[:make]} #{car[:model]}"
  # if car[:model] == user_input
  #   cars.delete_at(index)
end

# delete by index
puts "What item it is you want to delete?"
delete_index = gets.strip.to_i
# vaidations

cars.delete_at(delete_index - 1)

p cars

# delete everything
cars.clear

p cars

# one way to update is to delete and recreate

# update by attribute


cars.each_with_index do |car, index|
  puts "#{index + 1} - #{car[:make]} #{car[:model]}"
  # if car[:model] == user_input
  #   cars.delete_at(index)
end

puts "What item it is you want to update?"
update_index = gets.strip.to_i

puts "What is the new make?"
cars[update_index - 1][:make] = gets.strip