class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :img_url
      t.string :description
      t.references :hair_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
