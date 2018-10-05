# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

# item1 = {
#   :title => "socks",
#   :color => "green",
#   :price => 15,
#   :stock => true
# }

# item2 = {
#   :title => "underwear",
#   :color => "blue",
#   :price => 10,
#   :stock => false
# }

# item3 = {
#   title: "shirt",
#   color: "brown",
#   price: 25,
#   stock: false
# }

class Store_Item
  attr_reader :title, :color, :price, :stock
  attr_writer :stock

  def initialize (input_title, input_color, input_price, input_stock)
    @title = input_title
    @color = input_color
    @price = input_price
    @stock = input_stock
  end

  def print_info
    puts "You have selected #{color} #{title} that costs #{price} dollars."
  end

end

class Clothes < Store_Item
  def 
    super
    @inventory_system = 'FILO'
  end
end

item1 = Store_Item.new("socks", "green", 15, true)
item2 = Store_Item.new("underwear", "blue", 10, false)
item3 = Store_Item.new("shirt", "brown", 25, false)

item1.print_info
item2.print_info
item3.print_info

puts item1.stock
item1.stock = false
puts item1.stock