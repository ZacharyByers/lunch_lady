require_relative 'lunch_classes.rb'
require_relative 'lunch_menu_items.rb'

main_menu = Menu.new(Main_course_items)
side_menu = Menu.new(Side_items)

puts "Welcome to Zach Attach's Ordering Application!"

while true
  puts "Please choose a main course by typing its number."
  puts "To see a description of a course, type its number and 'd' (example: 3d)"
  puts "To see an item's nutritional information, type its number and 'n' (example: 2n)"
  puts "Type 'f' to finish ordering main courses and move on to side items."
  puts "Type 'q' to quit at any time."

  order = Order.new

  main_menu.display_items

  while true
    choice = gets.strip

    case choice
    when '1'
      order.add_main_course(1)
      puts "Item added."
    when '2'
      order.add_main_course(2)
      puts "Item added."
    when '3'
      order.add_main_course(3)
      puts "Item added."
    when '4'
      order.add_main_course(4)
      puts "Item added."
    when '1d'
      main_menu.display_item_description(1)
    when '2d'
      main_menu.display_item_description(2)
    when '3d'
      main_menu.display_item_description(3)
    when '4d'
      main_menu.display_item_description(4)
    when '1n'
      main_menu.display_item_nutrition(1)
    when '2n'
      main_menu.display_item_nutrition(2)
    when '3n'
      main_menu.display_item_nutrition(3)
    when '4n'
      main_menu.display_item_nutrition(4)
    when 'f'
      break
    when 'q'
      puts "Toodles."
      exit 0
    else
      puts "Invalid input, please try again."
    end
  end

  puts "Now choose side items. Type f to finish this order."

  side_menu.display_items

  while true
    choice = gets.strip

    case choice
    when '1'
      order.add_side(1)
      puts "Item added."
    when '2'
      order.add_side(2)
      puts "Item added."
    when '3'
      order.add_side(3)
      puts "Item added."
    when '4'
      order.add_side(4)
      puts "Item added."
    when '1d'
      side_menu.display_item_description(1)
    when '2d'
      side_menu.display_item_description(2)
    when '3d'
      side_menu.display_item_description(3)
    when '4d'
      side_menu.display_item_description(4)
    when '1n'
      side_menu.display_item_nutrition(1)
    when '2n'
      side_menu.display_item_nutrition(2)
    when '3n'
      side_menu.display_item_nutrition(3)
    when '4n'
      side_menu.display_item_nutrition(4)
    when 'f'
      break
    when 'q'
      puts "Toodles."
      exit 0
    else
      puts "Invalid input"
    end
  end

  total = order.total
  puts "Your total is $#{total}. Press 'c' to check out, or 'r' to clear your order and start over."

  choice = gets.strip
  case choice
  when 'c'
    puts "Enjoy your meal!"
    break
  when 'r'
  when 'q'
    puts "Toodles."
    exit 0
  else
    puts "Invalid input"
  end
end
