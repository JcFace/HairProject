class CreateHairTypeProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :hair_type_products do |t|
      t.references :product, null: false, foreign_key: true
      t.references :hair_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
