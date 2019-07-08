require "./dvd"
require "./book"

dvd1 = Dvd.new(name: "We are X", price: 4500, r_time: 90)
dvd2 = Dvd.new(name: "reon", price: 3800, r_time: 120)

book1 = Book.new(name: "紫の履歴書", price: 1600, page_num: 250)
book2 = Book.new(name: "はじめてのRuby", price: 2000, page_num: 300)

products = [dvd1, dvd2, book1, book2]

index = 0
products.each do |product|
  puts "#{index}.#{product.info}"
  index += 1
end

puts "-------------"
puts "商品の番号を選択してください"
order = gets.chomp.to_i

selected_product = products[order]
puts "選択された商品： #{selected_product.name}"

puts "個数を入力してください(３つ以上で10%割引)"
count = gets.chomp.to_i

puts "お会計は#{selected_product.get_total_price(count)}円です"
