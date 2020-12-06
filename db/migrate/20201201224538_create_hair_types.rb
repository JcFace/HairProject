class CreateHairTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :hair_types do |t|
      t.string :name
      t.string :img_url

      t.timestamps
    end
  end
end
