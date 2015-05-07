# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first
100.times do 
Product.create(
	{
  name: Faker::Commerce.product_name,
  description: Faker::Hacker.say_something_smart,
  price: rand(5000..100000),
  category_id: rand(1..6)
  }
)
print "|"
end

Category.create(name: "clothes")
Category.create(name: "bag")
Category.create(name: "food")
Category.create(name: "weapon")
Category.create(name: "furniture")
Category.create(name: "tool")
Category.create(name: "medicine")
