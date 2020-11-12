
def get_smallest(arr)
  min = 1.0/0
  arr.each do |n|
    if n < min
      min = n
    end
  end
  return min
end

puts(get_smallest([34, 15, 88, 2]))
puts(get_smallest([34, -345, -1, 100]))