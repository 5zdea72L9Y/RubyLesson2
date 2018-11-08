def leap?(year)
  true if year % 400 == 0
  false if year % 100 == 0
  year % 4 == 0
end

def days(day, month, year)
  days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  days[1] = 29 if leap?(year)

  day + days.take(month - 1).sum
end

puts 'Введите день:'
day = gets.chomp.to_i

puts 'Введите месяц:'
month = gets.chomp.to_i

puts 'Введите год:'
year = gets.chomp.to_i

puts "\n#{days(day, month, year)}"
