class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :property_type
      t.string :country
      t.string :city
      t.string :detailed_address
      t.text :description
      t.integer :price
      t.boolean :occupied
      t.boolean :active
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
