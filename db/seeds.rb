# db/seeds.rb

require 'faker'

# Clear existing data
Order.destroy_all
Product.destroy_all
Category.destroy_all

# Seed categories
categories = ['Vegetables', 'Fruits', 'Herbs', 'Grains']

categories.each do |category_name|
  Category.create(name: category_name)
end

# Seed products
categories = Category.all

categories.each do |category|
  5.times do
    product = Product.create(
      name: Faker::Food.vegetables,
      price: Faker::Commerce.price(range: 0.5..5.0),
      category: category
    )

    Order.create(
      product: product,
      quantity: Faker::Number.between(from: 1, to: 10),
      total: 0, # You may calculate total based on your application logic
      category: category
    )
  end
end
