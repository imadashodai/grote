class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.integer :area_id
      t.text :category_ids

      t.timestamps
    end
  end
end
