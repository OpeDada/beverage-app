# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
puts "Destroying everything - waaaaaaaaa!"
# PRODUCT
Product.destroy_all
product1 = Product.create!(
  name: "Coca-Cola Original Taste 24 x 330ml Glass Bottles",
  price: 19.99,
  description: "Nothing refreshes like Coca-Cola Original Taste!",
  brand: "Coca-Cola"
)
product1.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/seeds/product1.jpg')), filename: 'product1.jpg', content_type: 'image/jpg')

product2 = Product.create!(
  name: "Monster Energy 12 x 500ml",
  price: 11.99,
  description: "Unleash the Beast!",
  brand: "Monster Energy"
)
product2.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/seeds/product2.jpg')), filename: 'product2.jpg', content_type: 'image/jpg')

product3 = Product.create!(
  name: "Reign Lemon Hdz 12 x 500ml",
  price: 12.99,
  description: "Engineered to fuel the toughest workouts!",
  brand: "Reign")

product3.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/seeds/product3.jpg')), filename: 'product3.jpg', content_type: 'image/jpg')

product4 = Product.create!(
  name: "Fanta Lemon 24 x 330ml",
  price: 9.99,
  description: "Tongue-tingling refreshment with a lemony zing!",
  brand: "Fanta"
)
product4.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/seeds/product4.jpg')), filename: 'product4.jpg', content_type: 'image/jpg')

product5 = Product.create!(
  name: "Dr Pepper 24 x 330ml",
  price: 9.99,
  description: "A taste so misunderstood that’s confusingly good",
  brand: "Dr Pepper"
)
product5.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/seeds/product5.jpg')), filename: 'product5.jpg', content_type: 'image/jpg')

puts "Total number of products: #{Product.all.count}"
puts "Product names: #{Product.all.pluck("name")}"
puts "Product1: #{product1.name} price: #{product1.price.round(2)}"
puts "Product2: #{product2.name} price: #{product2.price.round(2)}"
puts "Product3: #{product3.name} price: #{product3.price.round(2)}"
puts "Product4: #{product4.name} price: #{product4.price.round(2)}"
puts "Product5: #{product5.name} price: #{product5.price.round(2)}"

# CART
Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"
