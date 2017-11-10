require_relative 'lunch_menu_items.rb'

class Order
  def initialize
    @order = []
  end

  def add_main_course(item)
    @order << Main_course_items[item - 1]
  end

  def add_side(item)
    @order << Side_items[item - 1]
  end

  def total
    total = 0.0
    @order.each do |item|
      puts "#{item[:name]}: $#{item[:price]}"
      total += item[:price]
    end
    return total
  end
end

class Menu
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def display_items
    @items.each_with_index { |item, i| puts "#{i + 1}: #{item[:name]} $#{item[:price]}" }
  end

  def display_item_description(index)
    puts "#{@items[index - 1][:description]}"
  end

  def display_item_nutrition(index)
    @items[index - 1][:nutrition].each { |type, value| puts "#{type}: #{value}" }
  end

end
