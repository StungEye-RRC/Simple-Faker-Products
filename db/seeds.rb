# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

1000.times do
  Product.create(
      title: Faker::Commerce.unique.product_name,
      description: "Surprisingly this product is made out of pure #{Faker::Commerce.material}.",
      price: Faker::Commerce.price,
      stock_quantity: Faker::Number.number(3))
end

puts "Created #{Product.count} products."