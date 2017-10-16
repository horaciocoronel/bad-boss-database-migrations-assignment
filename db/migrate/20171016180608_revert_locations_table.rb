class RevertLocationsTable < ActiveRecord::Migration[5.0]
  def up
    change_column :locations, :city, :text
    remove_column :locations, :weather, :text
    add_column :locations, :name, :text
    add_column :locations, :address, :text
    add_column :locations, :postal_code, :string
    add_column :locations, :province, :text
    add_column :locations, :country, :text
  end
  def down
    add_column :locations, :weather, :text
    add_column :locations, :city, :text
    remove_column :locations, :name, :text
    remove_column :locations, :address, :text
    remove_column :locations, :postal_code, :string
    remove_column :locations, :province, :text
    remove_column :locations, :country, :text
  end
end
