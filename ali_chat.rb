require_relative'./danger_pets'
require_relative'./store'
require_relative'./customers'


puts "Hello and welcome to the Dangerous Pets Store"

puts "Please enter your name"

answer = gets.chomp

customer1 = Customer.new(answer, 200)

pet1 = DangerPets.new("Borris", "tiger", 100, 8)
pet2 = DangerPets.new("Mulder", "polar bear", 200, 9)
pet3 = DangerPets.new("Frank", "penguin", 50, 2)


store = Store.new([], 0, [])
pets = [pet1, pet2, pet3]

store.add_new_customer(customer1)

puts "Welcome #{customer1.customer_name}!"
puts "You have #{customer1.customer_wallet} in your wallet."

puts "Today we have the following animals in stock: "

for pet in pets
  puts pet.species + " called " + pet.name
  puts "price: " + pet.price.to_s
end

puts "Which animal would you like to buy? (please type their species)"

answer = gets.chomp

for pet in pets
  if answer == pet.species
    bought_pet = pet
    puts "Great choice!"
  end
end

store.sell_pet(bought_pet)
store.updated_bag(customer1, bought_pet)
store.updated_till_value(bought_pet)
store.updated_wallet(customer1, bought_pet)

puts "You now have #{customer1.carry_case} in your carry case."

puts "You have #{customer1.customer_wallet} in your wallet"









