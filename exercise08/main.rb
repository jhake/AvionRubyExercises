def is_square?(number)
    (0..number).step(1) do |n|
        if n**2 == number
            return true
        end
    end
    return false
end

puts is_square?(-1)
puts is_square?(0)
puts is_square?(3)
puts is_square?(4)
puts is_square?(25)