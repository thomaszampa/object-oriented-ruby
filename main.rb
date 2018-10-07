require "./clothes.rb"

item1 = StoreFront::Store_Item.new("socks", "green", 15, true)
item2 = StoreFront::Store_Item.new("underwear", "blue", 10, false)
item3 = StoreFront::Store_Item.new("shirt", "brown", 25, false)
clothes = Clothes.new("shirt", "brown", 25, false, "FILO")

item1.print_info
item2.print_info
item3.print_info
clothes.input_system

puts item1.stock
item1.stock = false
puts item1.stock