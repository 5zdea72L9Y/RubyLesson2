f = [0, 1]

loop do
  next_number = f[-1] + f[-2]
  break if next_number > 100

  f << next_number
end

puts f
