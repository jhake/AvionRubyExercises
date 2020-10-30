#1
arr = [1, 3, 5, 7, 9, 11]
number = 3
puts arr.include?(number)

#2
puts "Enter number:"
user_input = gets.to_i
case user_input
when 0..50
  puts "Between 0 and 50"
when 51..100
  puts "Between 51 and 100"
when 100..Float::INFINITY
  puts "Above 100"
end

#3
puts "Enter something:"
user_input = gets.chomp
while user_input != "STOP"
  puts "Enter something:"
  user_input = gets.chomp
end

#4
arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
new_arr = arr.select {|n| n.even? }  
puts new_arr
