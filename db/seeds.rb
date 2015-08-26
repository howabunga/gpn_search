# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

brand_hashes = [
  { :name => "ON" },
  { :name => "BSN" },
  { :name => "ABB" },
  { :name => "Nutramino" },
  { :name => "IsoPure" },
  { :name => "TruSource" },
]

brand_hashes.each do |brand_hash|
  brand = Brand.new
  brand.name = brand_hash[:name]
  brand.save
end

puts "There are now #{Brand.count} brands in the database."

allergen_hashes = [
  { :name => "Milk" },
  { :name => "Soy" },
  { :name => "Egg" },
  { :name => "Wheat" },
  { :name => "Peanuts" },
  { :name => "Tree Nuts" },
  { :name => "Shellfish" },
  { :name => "Fish" },
  { :name => "None" },
]

allergen_hashes.each do |allergen_hash|
  allergen = Allergen.new
  allergen.name = allergen_hash[:name]
  allergen.save
end

puts "There are now #{Allergen.count} allergens in the database."

delivery_hashes = [
  { :name => "Powder" },
  { :name => "RTD (Ready to Drink)" },
  { :name => "Tablet" },
  { :name => "Capsule" },
  { :name => "Softgel" },
  { :name => "Bar" },
]

delivery_hashes.each do |delivery_hash|
  delivery = Delivery.new
  delivery.name = delivery_hash[:name]
  delivery.save
end

puts "There are now #{Delivery.count} deliveries in the database."

flavor_hashes = [
  { :name => "Vanilla" },
  { :name => "Chocolate" },
  { :name => "Strawberry" },
  { :name => "Cookies and Cream" },
  { :name => "Banana" },
  { :name => "Fruit Punch" },
  { :name => "Grape" },
  { :name => "Orange" },
  { :name => "Watermelon" },
  { :name => "Apple" },
  { :name => "Lemonade" },
  { :name => "Blue Raspberry" },
  { :name => "Fruit" },
  { :name => "Dessert" },
  { :name => "Coffee" },
  { :name => "Unflavored" },
]

flavor_hashes.each do |flavor_hash|
  flavor = Flavor.new
  flavor.name = flavor_hash[:name]
  flavor.save
end

puts "There are now #{Flavor.count} flavors in the database."

allergeninfo_hashes = [
  { :name => "Milk", :product_id => "1", :allergen_id => "1" },
  { :name => "Soy", :product_id => "1", :allergen_id => "2" },
  { :name => "Egg", :product_id => "1", :allergen_id => "3" },
  { :name => "Milk", :product_id => "2", :allergen_id => "1" },
  { :name => "Soy", :product_id => "2", :allergen_id => "2" },
  { :name => "Milk", :product_id => "3", :allergen_id => "1" },
  { :name => "Soy", :product_id => "3", :allergen_id => "2" },
  { :name => "Milk", :product_id => "4", :allergen_id => "1" },
  { :name => "Soy", :product_id => "4", :allergen_id => "2" },
  { :name => "None", :product_id => "5", :allergen_id => "9" },
  { :name => "Milk", :product_id => "6", :allergen_id => "1" },
  { :name => "Soy", :product_id => "6", :allergen_id => "2" },
  { :name => "Milk", :product_id => "7", :allergen_id => "1" },
  { :name => "Soy", :product_id => "7", :allergen_id => "2" },
  { :name => "Milk", :product_id => "8", :allergen_id => "1" },
  { :name => "Soy", :product_id => "8", :allergen_id => "2" },
  { :name => "Milk", :product_id => "9", :allergen_id => "1" },
  { :name => "Soy", :product_id => "9", :allergen_id => "2" },
  { :name => "Milk", :product_id => "10", :allergen_id => "1" },
  { :name => "Soy", :product_id => "10", :allergen_id => "2" },
  { :name => "Soy", :product_id => "11", :allergen_id => "2" },
  { :name => "Milk", :product_id => "12", :allergen_id => "1" },
  { :name => "Soy", :product_id => "12", :allergen_id => "2" },
  { :name => "Egg", :product_id => "12", :allergen_id => "3" },
  { :name => "Milk", :product_id => "13", :allergen_id => "1" },
  { :name => "Soy", :product_id => "13", :allergen_id => "2" },
  { :name => "Egg", :product_id => "13", :allergen_id => "3" },
  { :name => "Wheat", :product_id => "13", :allergen_id => "4" },
  { :name => "Soy", :product_id => "14", :allergen_id => "2" },
  { :name => "Milk", :product_id => "15", :allergen_id => "1" },
  { :name => "Soy", :product_id => "15", :allergen_id => "2" },
  { :name => "Milk", :product_id => "16", :allergen_id => "1" },
  { :name => "Soy", :product_id => "16", :allergen_id => "2" },
  { :name => "Soy", :product_id => "17", :allergen_id => "2" },
  { :name => "Egg", :product_id => "17", :allergen_id => "3" },
  { :name => "Milk", :product_id => "18", :allergen_id => "1" },
  { :name => "Soy", :product_id => "18", :allergen_id => "2" },
  { :name => "Milk", :product_id => "19", :allergen_id => "1" },
  { :name => "Soy", :product_id => "19", :allergen_id => "2" },
  { :name => "Egg", :product_id => "19", :allergen_id => "3" },
  { :name => "Soy", :product_id => "20", :allergen_id => "2" },
  { :name => "None", :product_id => "21", :allergen_id => "9" },
  { :name => "None", :product_id => "22", :allergen_id => "9" },
  { :name => "None", :product_id => "23", :allergen_id => "9" },
  { :name => "Soy", :product_id => "24", :allergen_id => "2" },
  { :name => "None", :product_id => "25", :allergen_id => "9" },
  { :name => "None", :product_id => "26", :allergen_id => "9" },
  { :name => "Milk", :product_id => "27", :allergen_id => "1" },
  { :name => "Soy", :product_id => "27", :allergen_id => "2" },
  { :name => "Egg", :product_id => "27", :allergen_id => "3" },
  { :name => "Wheat", :product_id => "27", :allergen_id => "4" },
  { :name => "None", :product_id => "28", :allergen_id => "9" },
  { :name => "Milk", :product_id => "29", :allergen_id => "1" },
  { :name => "Milk", :product_id => "30", :allergen_id => "1" },
  { :name => "Soy", :product_id => "30", :allergen_id => "2" },
  { :name => "Egg", :product_id => "30", :allergen_id => "3" },
  { :name => "Wheat", :product_id => "30", :allergen_id => "4" },
  { :name => "Milk", :product_id => "31", :allergen_id => "1" },
  { :name => "Soy", :product_id => "31", :allergen_id => "2" },
  { :name => "Milk", :product_id => "32", :allergen_id => "1" },
  { :name => "Soy", :product_id => "32", :allergen_id => "2" },
  { :name => "Milk", :product_id => "33", :allergen_id => "1" },
  { :name => "Soy", :product_id => "33", :allergen_id => "2" },
  { :name => "Egg", :product_id => "33", :allergen_id => "3" },
  { :name => "Wheat", :product_id => "33", :allergen_id => "4" },
  { :name => "Milk", :product_id => "34", :allergen_id => "1" },
  { :name => "Soy", :product_id => "35", :allergen_id => "2" },
  { :name => "Milk", :product_id => "36", :allergen_id => "1" },
  { :name => "Soy", :product_id => "36", :allergen_id => "2" },
  { :name => "None", :product_id => "37", :allergen_id => "9" },
  { :name => "None", :product_id => "38", :allergen_id => "9" },
  { :name => "Milk", :product_id => "39", :allergen_id => "1" },
  { :name => "Soy", :product_id => "39", :allergen_id => "2" },
  { :name => "Milk", :product_id => "40", :allergen_id => "1" },
  { :name => "Soy", :product_id => "40", :allergen_id => "2" },
  { :name => "Milk", :product_id => "41", :allergen_id => "1" },
  { :name => "Soy", :product_id => "41", :allergen_id => "2" },
  { :name => "None", :product_id => "42", :allergen_id => "9" },
  { :name => "None", :product_id => "43", :allergen_id => "9" },
  { :name => "None", :product_id => "44", :allergen_id => "9" },
  { :name => "None", :product_id => "45", :allergen_id => "9" },
  { :name => "None", :product_id => "46", :allergen_id => "9" },
  { :name => "None", :product_id => "47", :allergen_id => "9" },
  { :name => "None", :product_id => "48", :allergen_id => "9" },
  { :name => "Shellfish", :product_id => "49", :allergen_id => "7" },
  { :name => "Soy", :product_id => "50", :allergen_id => "2" },
  { :name => "Fish", :product_id => "51", :allergen_id => "8" },
  { :name => "None", :product_id => "52", :allergen_id => "9" },
  { :name => "Milk", :product_id => "53", :allergen_id => "1" },
  { :name => "None", :product_id => "54", :allergen_id => "9" },
  { :name => "None", :product_id => "55", :allergen_id => "9" },
  { :name => "Fish", :product_id => "56", :allergen_id => "8" },
  { :name => "None", :product_id => "57", :allergen_id => "9" },
  { :name => "None", :product_id => "58", :allergen_id => "9" },
  { :name => "None", :product_id => "59", :allergen_id => "9" },
  { :name => "None", :product_id => "60", :allergen_id => "9" },
  { :name => "None", :product_id => "61", :allergen_id => "9" },
  { :name => "None", :product_id => "62", :allergen_id => "9" },
]

allergeninfo_hashes.each do |allergeninfo_hash|
  allergeninfo = Allergeninfo.new
  allergeninfo.name = allergeninfo_hash[:name]
  allergeninfo.product_id = allergeninfo_hash[:product_id]
  allergeninfo.allergen_id = allergeninfo_hash[:allergen_id]
  allergeninfo.save
end

puts "There are now #{Allergeninfo.count} allergen profiles in the database."

marketterm_hashes = [
  { :name => "Vanilla Bean", :product_id => "1", :flavor_id => "1" },
  { :name => "Chocolate Shake", :product_id => "1", :flavor_id => "2" },
  { :name => "Chocolate Mint", :product_id => "2", :flavor_id => "2" },
  { :name => "Cookies and Cream Overdrive (contains additional Wheat allergen)", :product_id => "2", :flavor_id => "4" },
  { :name => "Turbo Chocolate", :product_id => "2", :flavor_id => "2" },
  { :name => "Supercharged Strawberry", :product_id => "2", :flavor_id => "3" },
  { :name => "Velocity Vanilla", :product_id => "2", :flavor_id => "1" },
  { :name => "Chocolate Peanut Butter", :product_id => "2", :flavor_id => "2" },
  { :name => "Twisted Apple", :product_id => "3", :flavor_id => "10" },
  { :name => "Fruit Punch", :product_id => "3", :flavor_id => "6" },
  { :name => "Raspberry Lemonade", :product_id => "3", :flavor_id => "11" },
  { :name => "Superfruit", :product_id => "3", :flavor_id => "13" },
  { :name => "Chocolate Decadence", :product_id => "4", :flavor_id => "2" },
  { :name => "Vanilla Bliss", :product_id => "4", :flavor_id => "1" },
  { :name => "Fruit Punch", :product_id => "5", :flavor_id => "6" },
  { :name => "Green Apple", :product_id => "5", :flavor_id => "10" },
  { :name => "Blueberry Lemonade", :product_id => "5", :flavor_id => "11" },
  { :name => "Watermelon", :product_id => "5", :flavor_id => "9" },
  { :name => "Pineapple", :product_id => "5", :flavor_id => "13" },
  { :name => "Double Rich Chocolate", :product_id => "6", :flavor_id => "2" },
  { :name => "Vanilla Ice Cream", :product_id => "6", :flavor_id => "1" },
  { :name => "Banana Cream", :product_id => "7", :flavor_id => "5" },
  { :name => "Caramel Toffee Fudge", :product_id => "7", :flavor_id => "14" },
  { :name => "Chocolate Malt", :product_id => "7", :flavor_id => "2" },
  { :name => "Chocolate Mint", :product_id => "7", :flavor_id => "2" },
  { :name => "Cookies and Cream (contains additional Wheat allergen)", :product_id => "7", :flavor_id => "4" },
  { :name => "Double Rich Chocolate", :product_id => "7", :flavor_id => "2" },
  { :name => "Extreme Milk Chocolate", :product_id => "7", :flavor_id => "2" },
  { :name => "French Vanilla Creme", :product_id => "7", :flavor_id => "1" },
  { :name => "Key Lime Pie", :product_id => "7", :flavor_id => "14" },
  { :name => "Mocha Cappuccino", :product_id => "7", :flavor_id => "15" },
  { :name => "Rocky Road", :product_id => "7", :flavor_id => "2" },
  { :name => "Salted Caramel", :product_id => "7", :flavor_id => "14" },
  { :name => "Delicious Strawberry", :product_id => "7", :flavor_id => "3" },
  { :name => "Strawberry Banana", :product_id => "7", :flavor_id => "3" },
  { :name => "Tropical Punch", :product_id => "7", :flavor_id => "6" },
  { :name => "Vanilla Ice Cream", :product_id => "7", :flavor_id => "1" },
  { :name => "Chocolate Peanut Butter", :product_id => "7", :flavor_id => "2" },
  { :name => "Graham Cracker", :product_id => "7", :flavor_id => "14" },
  { :name => "Strawberry Shake", :product_id => "7", :flavor_id => "3" },
  { :name => "Cake Batter", :product_id => "7", :flavor_id => "14" },
  { :name => "Chocolate Coconut", :product_id => "7", :flavor_id => "2" },
  { :name => "Coffee", :product_id => "7", :flavor_id => "15" },
  { :name => "White Chocolate", :product_id => "7", :flavor_id => "2" },
  { :name => "Vanilla", :product_id => "8", :flavor_id => "1" },
  { :name => "Chocolate", :product_id => "8", :flavor_id => "2" },
  { :name => "Strawberry", :product_id => "8", :flavor_id => "3" },
  { :name => "Vanilla Bean (contains additional Tree Nut allergen)", :product_id => "9", :flavor_id => "1" },
  { :name => "Milk Chocolate", :product_id => "9", :flavor_id => "2" },
  { :name => "Vanilla Shake", :product_id => "10", :flavor_id => "1" },
  { :name => "Chocolate Shake", :product_id => "10", :flavor_id => "2" },
  { :name => "Fruit Punch", :product_id => "11", :flavor_id => "6" },
  { :name => "Peach Mango", :product_id => "11", :flavor_id => "13" },
  { :name => "Raspberry Lemonade", :product_id => "11", :flavor_id => "11" },
  { :name => "Unflavored", :product_id => "11", :flavor_id => "16" },
  { :name => "Creamy Vanilla", :product_id => "12", :flavor_id => "1" },
  { :name => "Rich Milk Chocolate", :product_id => "12", :flavor_id => "2" },
  { :name => "Chocolate Peanut Butter", :product_id => "12", :flavor_id => "2" },
  { :name => "Double Chocolate", :product_id => "13", :flavor_id => "2" },
  { :name => "Vanilla Custard", :product_id => "13", :flavor_id => "1" },
  { :name => "Banana Cream Pie", :product_id => "13", :flavor_id => "5" },
  { :name => "Strawberry Cream", :product_id => "13", :flavor_id => "3" },
  { :name => "Cookies and Cream", :product_id => "13", :flavor_id => "4" },
  { :name => "Dutch Chocolate", :product_id => "14", :flavor_id => "2" },
  { :name => "Vanilla Bean (contains additional Milk allergen)", :product_id => "14", :flavor_id => "1" },
  { :name => "Banana Cream", :product_id => "15", :flavor_id => "5" },
  { :name => "Chocolate Cake Batter (contains additional Wheat allergen)", :product_id => "15", :flavor_id => "2" },
  { :name => "Chocolate Peanut Butter", :product_id => "15", :flavor_id => "2" },
  { :name => "Chocolate Supreme", :product_id => "15", :flavor_id => "2" },
  { :name => "Cookie Dough (contains additional Wheat allergen)", :product_id => "15", :flavor_id => "14" },
  { :name => "Cookies and Cream (contains additional Wheat allergen)", :product_id => "15", :flavor_id => "4" },
  { :name => "Strawberry Cream", :product_id => "15", :flavor_id => "3" },
  { :name => "Creamy Vanilla", :product_id => "15", :flavor_id => "1" },
  { :name => "Mint Chocolate Chip (contains additional Wheat allergen)", :product_id => "15", :flavor_id => "2" },
  { :name => "French Vanilla", :product_id => "16", :flavor_id => "1" },
  { :name => "Chocolate Creme", :product_id => "16", :flavor_id => "2" },
  { :name => "Vanilla Custard", :product_id => "17", :flavor_id => "1" },
  { :name => "Rich Chocolate", :product_id => "17", :flavor_id => "2" },
  { :name => "Chocolate", :product_id => "18", :flavor_id => "2" },
  { :name => "Vanilla Latte", :product_id => "18", :flavor_id => "15" },
  { :name => "Mocha Cappuccino", :product_id => "18", :flavor_id => "15" },
  { :name => "Cinnamon Bun", :product_id => "18", :flavor_id => "14" },
  { :name => "Colossal Chocolate", :product_id => "19", :flavor_id => "2" },
  { :name => "Fruit Punch", :product_id => "20", :flavor_id => "6" },
  { :name => "Orange", :product_id => "20", :flavor_id => "8" },
  { :name => "Unflavored", :product_id => "20", :flavor_id => "16" },
  { :name => "Fruit Fusion", :product_id => "21", :flavor_id => "6" },
  { :name => "Unflavored", :product_id => "21", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "22", :flavor_id => "16" },
  { :name => "Wild Berry", :product_id => "22", :flavor_id => "13" },
  { :name => "Unflavored", :product_id => "23", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "23", :flavor_id => "16" },
  { :name => "Fruit Fusion", :product_id => "24", :flavor_id => "6" },
  { :name => "Concord Grape", :product_id => "24", :flavor_id => "7" },
  { :name => "Orange Cooler", :product_id => "24", :flavor_id => "8" },
  { :name => "Blue Raspberry", :product_id => "24", :flavor_id => "12" },
  { :name => "Watermelon", :product_id => "24", :flavor_id => "9" },
  { :name => "Green Apple", :product_id => "24", :flavor_id => "10" },
  { :name => "Lemon Lime", :product_id => "24", :flavor_id => "11" },
  { :name => "Strawberry Lime", :product_id => "24", :flavor_id => "13" },
  { :name => "Pineapple", :product_id => "24", :flavor_id => "13" },
  { :name => "Unflavored", :product_id => "25", :flavor_id => "16" },
  { :name => "Fruit Punch", :product_id => "26", :flavor_id => "6" },
  { :name => "Wild Grape", :product_id => "26", :flavor_id => "7" },
  { :name => "Mandarin Orange", :product_id => "26", :flavor_id => "8" },
  { :name => "Vanilla", :product_id => "27", :flavor_id => "1" },
  { :name => "Chocolate", :product_id => "27", :flavor_id => "2" },
  { :name => "Strawberry", :product_id => "27", :flavor_id => "3" },
  { :name => "Chocolate Peanut Butter", :product_id => "27", :flavor_id => "2" },
  { :name => "Banana", :product_id => "27", :flavor_id => "5" },
  { :name => "Unflavored", :product_id => "28", :flavor_id => "16" },
  { :name => "Orange Blast", :product_id => "29", :flavor_id => "8" },
  { :name => "Watermelon Wave", :product_id => "29", :flavor_id => "9" },
  { :name => "Vanilla", :product_id => "30", :flavor_id => "1" },
  { :name => "Chocolate", :product_id => "30", :flavor_id => "2" },
  { :name => "Strawberry", :product_id => "30", :flavor_id => "3" },
  { :name => "Cookies and Cream", :product_id => "30", :flavor_id => "4" },
  { :name => "Banana", :product_id => "30", :flavor_id => "5" },
  { :name => "Vanilla", :product_id => "31", :flavor_id => "1" },
  { :name => "Chocolate", :product_id => "31", :flavor_id => "2" },
  { :name => "Strawberry", :product_id => "31", :flavor_id => "3" },
  { :name => "Vanilla", :product_id => "32", :flavor_id => "1" },
  { :name => "Chocolate", :product_id => "32", :flavor_id => "2" },
  { :name => "Strawberry", :product_id => "32", :flavor_id => "3" },
  { :name => "Vanilla", :product_id => "33", :flavor_id => "1" },
  { :name => "Chocolate", :product_id => "33", :flavor_id => "2" },
  { :name => "Strawberry", :product_id => "33", :flavor_id => "3" },
  { :name => "Fruit Punch", :product_id => "34", :flavor_id => "6" },
  { :name => "Watermelon", :product_id => "34", :flavor_id => "9" },
  { :name => "Blue Raspberry", :product_id => "34", :flavor_id => "12" },
  { :name => "Green Apple", :product_id => "34", :flavor_id => "10" },
  { :name => "Grape", :product_id => "34", :flavor_id => "7" },
  { :name => "Fruit Punch", :product_id => "35", :flavor_id => "6" },
  { :name => "Watermelon", :product_id => "35", :flavor_id => "9" },
  { :name => "Blue Raspberry", :product_id => "35", :flavor_id => "12" },
  { :name => "Green Apple", :product_id => "35", :flavor_id => "10" },
  { :name => "Grape", :product_id => "35", :flavor_id => "7" },
  { :name => "Vanilla", :product_id => "36", :flavor_id => "1" },
  { :name => "Chocolate", :product_id => "36", :flavor_id => "2" },
  { :name => "Unflavored", :product_id => "37", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "38", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "39", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "40", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "41", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "42", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "43", :flavor_id => "16" },
  { :name => "Fruit Punch", :product_id => "44", :flavor_id => "6" },
  { :name => "Orange Pineapple", :product_id => "44", :flavor_id => "8" },
  { :name => "Unflavored", :product_id => "45", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "46", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "47", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "48", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "49", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "50", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "51", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "52", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "53", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "54", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "55", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "56", :flavor_id => "16" },
  { :name => "Unflavored", :product_id => "57", :flavor_id => "16" },
  { :name => "Fruit Punch", :product_id => "58", :flavor_id => "6" },
  { :name => "Raspberry Lemonade", :product_id => "58", :flavor_id => "11" },
  { :name => "Grape Frost", :product_id => "59", :flavor_id => "7" },
  { :name => "Watermelon", :product_id => "59", :flavor_id => "9" },
  { :name => "Fruit Punch", :product_id => "60", :flavor_id => "6" },
  { :name => "Berry Bomb", :product_id => "60", :flavor_id => "13" },
  { :name => "Grape", :product_id => "60", :flavor_id => "7" },
  { :name => "Peach Mango", :product_id => "60", :flavor_id => "13" },
  { :name => "Fruit Punch", :product_id => "61", :flavor_id => "6" },
  { :name => "Grape Blast", :product_id => "61", :flavor_id => "7" },
  { :name => "Watermelon", :product_id => "61", :flavor_id => "9" },
  { :name => "Blue Raspberry", :product_id => "61", :flavor_id => "12" },
  { :name => "Black Cherry", :product_id => "61", :flavor_id => "13" },
  { :name => "Green Tea", :product_id => "61", :flavor_id => "17" },
  { :name => "Lemon Tea", :product_id => "61", :flavor_id => "17" },
  { :name => "Raspberry Tea", :product_id => "61", :flavor_id => "17" },

]

marketterm_hashes.each do |marketterm_hash|
  marketterm = Marketterm.new
  marketterm.name = marketterm_hash[:name]
  marketterm.product_id = marketterm_hash[:product_id]
  marketterm.flavor_id = marketterm_hash[:flavor_id]
  marketterm.save
end

puts "There are now #{Marketterm.count} flavor profiles in the database."

product_hashes = [

  {:image => "1.jpg", :name => "Platinum Hydrobuilder", :brand_id => "1", :delivery_id => "1" },
  {:image => "2.jpg", :name => "Platinum Hydrowhey", :brand_id => "1", :delivery_id => "1" },
  {:image => "3.jpg", :name => "Platinum PRE", :brand_id => "1", :delivery_id => "1" },
  {:image => "4.jpg", :name => "Platinum Tricelle Casein", :brand_id => "1", :delivery_id => "1" },
  {:image => "5.jpg", :name => "Gold Standard Pre-Workout", :brand_id => "1", :delivery_id => "1" },
  {:image => "6.jpg", :name => "100% Whey Protein", :brand_id => "1", :delivery_id => "1" },
  {:image => "7.jpg", :name => "100% Whey Gold Standard", :brand_id => "1", :delivery_id => "1" },
  {:image => "8.jpg", :name => "100% Naturally Flavored Whey Gold Standard", :brand_id => "1", :delivery_id => "1" },
  {:image => "9.jpg", :name => "100% Naturally Flavored Oats and Whey", :brand_id => "1", :delivery_id => "1" },
  {:image => "10.jpg", :name => "Performance Whey", :brand_id => "1", :delivery_id => "1" },
  {:image => "11.jpg", :name => "PRO BCAA", :brand_id => "1", :delivery_id => "1" },
  {:image => "12.jpg", :name => "PRO Complex", :brand_id => "1", :delivery_id => "1" },
  {:image => "13.jpg", :name => "PRO Gainer", :brand_id => "1", :delivery_id => "1" },
  {:image => "14.jpg", :name => "100% Soy", :brand_id => "1", :delivery_id => "1" },
  {:image => "15.jpg", :name => "100% Casein Gold Standard", :brand_id => "1", :delivery_id => "1" },
  {:image => "16.jpg", :name => "100% Naturally Flavored Casein Gold Standard", :brand_id => "1", :delivery_id => "1" },
  {:image => "17.jpg", :name => "100% Egg Gold Standard", :brand_id => "1", :delivery_id => "1" },
  {:image => "18.jpg", :name => "Protein Energy", :brand_id => "1", :delivery_id => "1" },
  {:image => "19.jpg", :name => "2:1:1 Recovery", :brand_id => "1", :delivery_id => "1" },
  {:image => "20.jpg", :name => "Micronized Instantized BCAA Powder", :brand_id => "1", :delivery_id => "1" },
  {:image => "21.jpg", :name => "Beta Alanine Powder", :brand_id => "1", :delivery_id => "1" },
  {:image => "22.jpg", :name => "CGT 10", :brand_id => "1", :delivery_id => "1" },
  {:image => "23.jpg", :name => "Micronized Creatine Powder", :brand_id => "1", :delivery_id => "1" },
  {:image => "24.jpg", :name => "Amino Energy", :brand_id => "1", :delivery_id => "1" },
  {:image => "25.jpg", :name => "Glutamine Powder", :brand_id => "1", :delivery_id => "1" },
  {:image => "26.jpg", :name => "Preload Creatine Complex", :brand_id => "1", :delivery_id => "1" },
  {:image => "27.jpg", :name => "Serious Mass", :brand_id => "1", :delivery_id => "1" },
  {:image => "28.jpg", :name => "Fitness Fiber", :brand_id => "1", :delivery_id => "1" },
  {:image => "29.jpg", :name => "Amino Energy RTD", :brand_id => "1", :delivery_id => "2" },
  {:image => "30.jpg", :name => "Syntha 6", :brand_id => "2", :delivery_id => "1" },
  {:image => "31.jpg", :name => "Syntha 6 Isolate", :brand_id => "2", :delivery_id => "1" },
  {:image => "32.jpg", :name => "Isoburn", :brand_id => "2", :delivery_id => "1" },
  {:image => "33.jpg", :name => "True Mass 1200", :brand_id => "2", :delivery_id => "1" },
  {:image => "34.jpg", :name => "N.O.-Xplode", :brand_id => "2", :delivery_id => "1" },
  {:image => "35.jpg", :name => "Amino X", :brand_id => "2", :delivery_id => "1" },
  {:image => "36.jpg", :name => "Whey DNA", :brand_id => "2", :delivery_id => "1" },
  {:image => "37.jpg", :name => "Creatine DNA", :brand_id => "2", :delivery_id => "1" },
  {:image => "38.jpg", :name => "Glutamine DNA", :brand_id => "2", :delivery_id => "1" },
  {:image => "39.jpg", :name => "Superior Amino 2222 Caps", :brand_id => "1", :delivery_id => "4" },
  {:image => "40.jpg", :name => "Superior Amino 2222 Tabs", :brand_id => "1", :delivery_id => "3" },
  {:image => "41.jpg", :name => "Superior Amino 2222 Softgels", :brand_id => "1", :delivery_id => "5" },
  {:image => "42.jpg", :name => "Tribulus Caps", :brand_id => "1", :delivery_id => "4" },
  {:image => "43.jpg", :name => "ZMA Caps", :brand_id => "1", :delivery_id => "4" },
  {:image => "44.jpg", :name => "Amino Energy Chewables", :brand_id => "1", :delivery_id => "3" },
  {:image => "45.jpg", :name => "HMB 1000 MG Caps", :brand_id => "1", :delivery_id => "4" },
  {:image => "46.jpg", :name => "BCAA 1000 Caps", :brand_id => "1", :delivery_id => "4" },
  {:image => "47.jpg", :name => "Glutamine 1000 MG Caps", :brand_id => "1", :delivery_id => "4" },
  {:image => "48.jpg", :name => "Creatine 2500 Caps", :brand_id => "1", :delivery_id => "4" },
  {:image => "49.jpg", :name => "Opti-Men", :brand_id => "1", :delivery_id => "3" },
  {:image => "50.jpg", :name => "Opti-Women", :brand_id => "1", :delivery_id => "4" },
  {:image => "51.jpg", :name => "Fish Oil Softgels", :brand_id => "1", :delivery_id => "5" },
  {:image => "52.jpg", :name => "Flaxseed Oil Softgels", :brand_id => "1", :delivery_id => "5" },
  {:image => "53.jpg", :name => "Melatonin Tabs", :brand_id => "1", :delivery_id => "3" },
  {:image => "54.jpg", :name => "CLA Softgels", :brand_id => "1", :delivery_id => "5" },
  {:image => "55.jpg", :name => "L-Carnitine 500 MG Tabs", :brand_id => "1", :delivery_id => "3" },
  {:image => "56.jpg", :name => "Fish Oil DNA Softgels", :brand_id => "2", :delivery_id => "5" },
  {:image => "57.jpg", :name => "CLA DNA Softgels", :brand_id => "2", :delivery_id => "5" },
  {:image => "58.png", :name => "Maxx Carnitine", :brand_id => "3", :delivery_id => "2" },
  {:image => "59.png", :name => "Speed Shot", :brand_id => "3", :delivery_id => "2" },
  {:image => "60.png", :name => "Speed Stack", :brand_id => "3", :delivery_id => "2" },
  {:image => "61.png", :name => "Speed Stack Pumped N.O.", :brand_id => "3", :delivery_id => "2" },
  {:image => "62.png", :name => "Turbo Tea Zero", :brand_id => "3", :delivery_id => "2" }
]

product_hashes.each do |product_hash|
  product = Product.new
  product.image = File.open(Rails.root.join('lib', 'assets', product_hash[:image]).to_s)
  product.name = product_hash[:name]
  product.brand_id = product_hash[:brand_id]
  product.delivery_id = product_hash[:delivery_id]
  product.save
end

puts "There are now #{Product.count} products in the database."
