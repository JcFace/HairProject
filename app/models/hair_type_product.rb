class HairTypeProduct < ApplicationRecord
  belongs_to :product
  belongs_to :hair_type
end
