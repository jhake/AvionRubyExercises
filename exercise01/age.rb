puts "How old are you?"
age = gets.to_i
[10, 20, 30, 40].each do | added_age | 
  puts "In #{added_age} years you will be:"
  puts age + added_age
end
