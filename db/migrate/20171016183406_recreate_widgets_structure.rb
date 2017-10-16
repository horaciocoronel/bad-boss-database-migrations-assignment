class RecreateWidgetsStructure < ActiveRecord::Migration[5.0]
  def up
    drop_table :widgets
  end
  def down
    create_table :widgets do |t|
      t.string   :first_name
      t.string   :last_name
      t.text     :dietary_restrictions
      t.decimal  :salary
      t.integer  :number_of_kids
      t.text     :vulnerabilities
      t.text     :illnesses
      t.text     :medication
      t.text     :voting_preferences
    end
  end
end
