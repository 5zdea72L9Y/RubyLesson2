vowels = %w[a e i o u y]

letters = ('a'..'z').to_a

vowels_letters = {}

letters.each do |key|
  vowels_letters[key] = letters.find_index(key) if vowels.include?(key)
end

puts vowels_letters
