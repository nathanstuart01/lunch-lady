
# hash to show user choices and cost
@menu_items = [
  { Choice: 'pizza', Cost: 3.00 },
  { Choice: 'burrito', Cost: 4.00 },
  { Choice: 'Ramen', Cost: 5.00 },
  { Choice: 'Salad', Cost: 2.00 },
  { Choice: 'Refried Beans', Cost: 2.00 },
  { Choice: 'Edamame', Cost: 2.00 },
]
#arrays to store user menu item choices
@cost_main_menu = []
@cost_side_menu = []
@cost_side_menu2 = []

#first meno shown, also stores info to array and outputs user choices and cost
def main_menu
  puts "What main dish would you like to oder?"
  puts "1: Pizza $3.00"
  puts "2: Burrito $4.00"
  puts "3: Ramen $5.00"
  @user_input = gets.chomp
    case
    when @user_input == '1'
          @cost_main_menu << 3.00
    when @user_input == '2'
          @cost_main_menu << 4.00
    when @user_input == '3'
         @cost_main_menu << 5.00
    else
      puts 'Invalid choice'
      main_menu
    end
  end


  def side_menu
    puts "What side dish would you like to oder?"
    puts "1: Salad $2.00"
    puts "2: Refriend Beans $2.00"
    puts "3: Edamame $2.00"
    @user_input2 = gets.chomp
      case
      when @user_input2 == '1'
           @cost_side_menu << 2.00
      when @user_input2 == '2'
           @cost_side_menu << 2.00
      when @user_input2 == '3'
           @cost_side_menu << 2.00
      else
        puts 'Invalid choice'
        side_menu
      end
  end

  def side_menu2
    puts "What additional side dish would you like to oder?"
    puts "1: Salad $2.00"
    puts "2: Refriend Beans $2.00"
    puts "3: Edamame $2.00"
    @user_input3 = gets.chomp
      case
      when @user_input3 == '1'
           @cost_side_menu2 << 2.00
      when @user_input3 == '2'
           @cost_side_menu2 << 2.00
      when @user_input3 == '3'
           @cost_side_menu2 << 2.00
      else
        puts 'Invalid choice'
        side_menu2
      end
  end


def final_choice_menu_main
  puts "Here is the main item you ordered and its cost:"
case
  when @user_input == '1'
    puts @menu_items[0]
  when @user_input == '2'
    puts @menu_items[1]
  when @user_input == '3'
    puts @menu_items[2]
  end
  puts
end

def final_choice_menu_side1
  puts "Here is the first side item you ordered and its cost:"
case
  when @user_input2 == '1'
    puts @menu_items[3]
  when @user_input2 == '2'
    puts @menu_items[4]
  when @user_input2 == '3'
    puts @menu_items[5]
  end
  puts
end

def final_choice_menu_side2
  puts "Here is the second side item you ordered and its cost:"
case
when @user_input3 == '1'
    puts @menu_items[3]
  when @user_input3 == '2'
    puts @menu_items[4]
  when @user_input3 == '3'
    puts @menu_items[5]
  end
  puts
end

main_menu
side_menu
side_menu2
final_choice_menu_main
final_choice_menu_side1
final_choice_menu_side2

  # puts take user choices and display what they choose somehow, from array or hash
  puts "Your total cost for the one main menu item and the two side dishes is:"
  puts "$#{@cost_main_menu[0]} + $#{@cost_side_menu[0]} + $#{@cost_side_menu2[0]} = $#{@cost_main_menu[0] + @cost_side_menu[0] + @cost_side_menu2[0]}"
