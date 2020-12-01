class HairType < ApplicationRecord
    has_many :hair_type_products
    has_many :products, through: :hair_type_products
end
