# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Products
p1 = Product.create name:'Lavender heart', code:001, price:9.25
p1.save

p2 = Product.create name:'Personalised cufflinks', code:002, price:45
p2.save

p3 = Product.create name:'Kids T-shirt', code:003, price:19.95
p3.save

# Minimums
m1 = Minimum.create category:0, value: 60 # 0 -> by value
m1.save

m2 = Minimum.create category:1, value: 2  # 1 -> by quantity
m2.save

# Discounts
d1 = Discount.create category:0, value: 10 # 0 -> by percentage
d1.save

d2 = Discount.create category:1, value: 8.5  # 1 -> by valor
d2.save

# Rules
rule = m1.rule.create!
