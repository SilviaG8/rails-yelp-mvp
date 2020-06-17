# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '00442030115911', category: 'italian' }
pizza_east = { name: "Pizza East", address: "56A Shoreditch St, London E1 6PQ", phone_number: '00442030112311', category: 'italian' }
sketch = { name: "Sketch", address: "9 Conduit St, London W1S 2XG", phone_number: '00442030156911', category: 'japanese' }
ledbury =  { name: "Ledbury", address: "127 Ledbury Rd, London W11 2AQ", phone_number: '00442045115911', category: 'belgian' }
lyle = { name: "Lyle", address: "56 Shoreditch High St, London E1 6JJ", phone_number: '00442030885911', category: 'french' }

[dishoom, pizza_east, sketch, ledbury, lyle].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
