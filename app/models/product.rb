class Product < ApplicationRecord
    has_many :hair_type_products
    has_many :hair_types, through: :hair_type_products
end
