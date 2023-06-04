require 'faker'

puts "🌱 Seeding data..."

# create some users
users = []
rand(1...25).times do
  user = User.create(
    user_name: Faker::Name.first_name + " " + Faker::Name.last_name,
    user_email: Faker::Internet.unique.email,
    phone_number: "07#{Faker::Number.unique.number(digits: 8)}"
  )
  users.push(user)
end

#create some products
products = [] # move product outside of the loop
rand(1..20).times do
  product = Product.create(
    product_name: Faker::Commerce.product_name,
    product_type: Faker::Commerce.department(max: 1)
  )
  products.push(product) # push product to array of products
end

# create between 1 and 5 reviews for each user
users.each do |user|
  rand(1..10).times do
    Review.create(
      star_rating: rand(1..5),
      comments: Faker::Lorem.sentence,
      user_id: user.id,
      product_id: products.sample.id 
    )
  end
end

puts "🌱 Done seeding!"