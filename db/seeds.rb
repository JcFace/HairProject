# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

HairTypeProduct.delete_all
Product.delete_all
HairType.delete_all

HairType.create(name: "Straight")
HairType.create(name: "Curved")
HairType.create(name: "Curvy")
HairType.create(name: "Wavy")
HairType.create(name: "Curled")
HairType.create(name: "Curly")
HairType.create(name: "Very Curly")
HairType.create(name: "Tight Curls")
HairType.create(name: "Kinky")
HairType.create(name: "Coiled")

30.times do
    Product.create(name: Faker::Space.star_cluster + " Shampoo")
end

30.times do
    Product.create(name: Faker::Space.constellation + " Leave-in")
end

30.times do
    Product.create(name: Faker::Space.star + " Conditioner")
end

90.times do
    HairTypeProduct.create(hair_type_id: HairType.all.sample.id, product_id: Product.all.sample.id)
end

