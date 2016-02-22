module Menu
 def main_menu
  puts "      1: Steak     ... 12.00"
  puts "      2: Chicken   ...  7.00"
  puts "      3: Hamburger ...  5.00"
  puts "      4: Description"
  # puts "      5: Start over"
  
 end 

 def side_order
  puts "      1: Mashed Potatoes ... 2.00"
  puts "      2: Vegetables      ... 2.00"
  puts "      3: Fries           ... 1.50"
  puts "      4: Description"
  # puts "      5: Start over"
 end
end
class Main
    include Menu
    attr_accessor :main_course
    def initialize
        puts "     Welcome to 'The Ruby'!"
        puts "     What would you like?"
        main_menu
        @main_course = gets.strip

    end 
end


class Sider 
    include Menu
    attr_accessor :sider_choice
    def initialize
        puts "     What side would you like to add?"
        side_order
        @sider_choice = gets.strip
    end
end

class Dessert
  include Menu
  attr_accessor :dessert_num1 
    def initialize
      des_quest
      @dessert_num1 = gets.strip
    end
end
  


steak = {food: "Steak", price: 12.00}
#                   description: "     New York Strip, cooked to your preference.",
#                   nutrition: {
#                     calories: 600,
#                     fat: 25,
#                     protein: 15
#             }
#           }
# }
chicken= {food: "Chicken", price: 8.00}
#                   description: "     Perfectly seasoned and juicy breast of chicken.",
#                   nutrition: {
#                     calories: 400,
#                     fat: 15,
#                     protein: 20
#             }
#           }
# }
hamburger = {food: "Hamburger", price: 5.00}
#                   description: "     1/3 lb. American beef patty cooked to your liking on a white or wheat bun.",
#                   nutrition: {
#                     calories: 700,
#                     fat: 25,
#                     protein: 12
#             } 
#           }
# }

mashed_potatoes = {food: "Mashed Potatoes", price: 2.00}
#             description: "     Served with or without gravy.",
#             nutrition: {
#               calories: 350,
#               fat: 18,
#               protein: 1
#             }
#           }
# }

vegetables = {food: "Vegetables", price: 2.00}
#             description: "     Carrots, Broccoli, or Corn, buttered and lightly salted",
#             nutrition: {
#               calories: 150,
#               fat: 0,
#               protein: 0
#             }
#           }
# }
fries = {food: "Fries", price: 1.50}
#             description: "     Who doesn't like some thick-cut, perfectly seasoned fries?",
#             nutrition: {
#               calories: 600,
#               fat: 25,
#               protein: 1
#             }
#           }
# }


# desserts = {dessert_course: {
#               cheesecake: {
#                 price: 3.00,
#                 description: "A thick slice of rich, creamy, New York style cheesecake topped with a berry compote.",
#                 nutrition: {
#                   calories: 750,
#                   fat: 35,
#                   protein: 10
#                 }
#               },
#               lava_cake: {
#                 price: 3.00,
#                 description: "A hot, chocolatey, gooey mess. And some ice-cream.",
#                 nutrition: {
#                   calories: 750,
#                   fat: 35,
#                   protein: 5
#                 }
#               }
# }
# }
# dessert_1 = desserts[:dessert_course][:cheesecake]
# dessert_2 = desserts[:dessert_course][:lava_cake]


first_order = Main.new
case first_order.main_course
 when '1'
   meat = steak
 when '2'
   meat = chicken
 when '3'
   meat = hamburger
 else 
   puts "That's not a choice"
end 
first_side_order = Sider.new
case first_side_order.sider_choice
  when '1'
    sider_1 = mashed_potatoes
  when '2'
    sider_1 = vegetables
  when '3'
    sider_1 = fries
  else
    puts "That's not a choice"
end
second_side_order = Sider.new
case second_side_order.sider_choice
  when '1'
    sider_2 = mashed_potatoes
  when '2'
    sider_2 = vegetables
  when '3'
    sider_2 = fries
  else 
    puts "That's not a choice"
end
 
 
total = meat[:price] + sider_1[:price] + sider_2[:price]

puts "You've chosen #{meat.first[:food]}, #{sider_1.first[:food]}, and #{sider_2.first[:food]}."
print "Your total is: #{total}"
# # print " Your total is: $#{total}"