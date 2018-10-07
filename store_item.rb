module StoreFront
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
end