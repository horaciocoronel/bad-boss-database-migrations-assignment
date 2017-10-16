class ChangeQuantityFieldType < ActiveRecord::Migration[5.0]
  
  def self.up
    # method to migration the column type forward
    change_column :parts, :quantity, :decimal
  end

  def self.down
    # method to rollback the column type to its previous state
    change_column :parts, :quantity, :integer
  end
end
