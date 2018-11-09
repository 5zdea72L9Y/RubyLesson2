vowels = %w[a e i o u y]

letters = ('a'..'z').to_a

test = {}
vowels_letters = {}

letters.each_with_index do |obj, i|
  vowels_letters[obj] = i if vowels.include?(obj)
end

puts vowels_letters
