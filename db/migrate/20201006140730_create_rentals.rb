class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :title
      t.string :owner
      t.string :city
      t.string :lat
      t.string :lng
      t.string :image
      t.integer :bedrooms
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
