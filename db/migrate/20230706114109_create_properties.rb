class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.text :address
      t.decimal :price
      t.integer :number_of_bedrooms

      t.timestamps
    end
  end
end
