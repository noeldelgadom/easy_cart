
# Create 100 Fake Products
100.times do
  Product.create!(
    name: Faker::Food.ingredient,
    image: Faker::Placeholdit.image("250x250", 'jpg'),
    price: Faker::Number.between(1, 20000),
    stock: Faker::Number.between(1, 1000),
  )
end

# Create 1 cart
Cart.create!()

# Assign 3 Products to first Cart
Cart.first.products << Product.first
Cart.first.products << Product.second
Cart.first.products << Product.third
