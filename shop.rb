shop_cart = {}

def all_price(shop_cart)
  check_item = 0

  shop_cart.each_value do |i|
    check_item += i[:price] * i[:count]
  end
  check_item
end

loop do
  puts "Введите товар(для остановик напишите 'stop'):"
  product = gets.chomp.downcase
  break if product == 'stop'

  puts 'Введите стоимость:'
  price = gets.chomp.to_f

  puts 'Введите кол-во товаров:'
  count = gets.chomp.to_i

  shop_cart[product] = { price: price, count: count }
end

puts "Ваша корзина:\n\n"
shop_cart.each do |key, val|
  puts "Товар: #{key}, Цена: #{val}"
end

puts "Общая цена: #{all_price(shop_cart)}"
