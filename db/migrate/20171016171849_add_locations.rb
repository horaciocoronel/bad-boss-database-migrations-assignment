class AddLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.text   :name
      t.text   :address
      t.string :postal_code
      t.text   :city
      t.text   :province
      t.text   :country
    end
  end
end
