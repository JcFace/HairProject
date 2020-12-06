# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Product.delete_all
HairType.delete_all

HairType.create(name: "Straight", img_url: "https://www.sheamoisture.com/on/demandware.static/-/Sites-shm-us-Library/default/dwde5ddb07/images/Landing/hair-type/ModelHairChart-01.jpg")
HairType.create(name: "Wavy", img_url: "https://www.sheamoisture.com/on/demandware.static/-/Sites-shm-ca-Library/default/dw662002ca/images/Landing/hair-type/ModelHairChart-02.jpg")
HairType.create(name: "Curly", img_url: "https://www.sheamoisture.com/on/demandware.static/-/Sites-shm-ca-Library/default/dw82f550c0/images/Landing/hair-type/ModelHairChart-03.jpg")
HairType.create(name: "Kinky", img_url: "https://www.sheamoisture.com/on/demandware.static/-/Sites-shm-ca-Library/default/dw781de5d3/images/Landing/hair-type/ModelHairChart-04.jpg")

30.times do
    Product.create(name: Faker::Space.star_cluster + " Shampoo", img_url: Faker::Avatar.image, description: Faker::Books::Lovecraft.paragraph, hair_type_id: HairType.all.sample.id)
end

30.times do
    Product.create(name: Faker::Space.constellation + " Leave-in", img_url: Faker::Avatar.image, description: Faker::Hipster.paragraph(sentence_count: 2, supplemental: true), hair_type_id: HairType.all.sample.id)
end

30.times do
    Product.create(name: Faker::Space.star + " Conditioner", img_url: Faker::Avatar.image, description: Faker::Hipster.paragraph(sentence_count: 2), hair_type_id: HairType.all.sample.id)
end


