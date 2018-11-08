# Как лучше?

arr = (10..100).to_a

new_arr = arr.delete_if { |i| i % 5 != 0 } # Так

arr2 = (10..100).step(5).to_a # Или так

puts new_arr
puts '------'
puts arr2
