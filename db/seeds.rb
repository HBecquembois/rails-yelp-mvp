# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
climats = { name: 'restaurant des Climats', address: '41 rue de Lille Paris 7', category: 'french' }
hoki = { name: 'Hoki Sushi', address: 'rue de la Grande Truanderie Paris 1', category: 'japanese' }
joseph = { name: 'Le St Joseph', address: 'bd de la République La Garenne Colombes', category: 'french'}

[dishoom, pizza_east, climats, hoki, joseph].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
