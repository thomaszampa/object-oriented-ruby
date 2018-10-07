require "./store_item.rb"
require "./seasonable.rb"

module StoreFront
  class Clothes < StoreFront::Store_Item
    include Seasonable

    def initialize (input_title, input_color, input_price, input_stock, input_system)
      @title = input_title
      @color = input_color
      @price = input_price
      @stock = input_stock
      @inventory_system = input_system
    end

    def input_system
      @inventory_system
    end
  end
end