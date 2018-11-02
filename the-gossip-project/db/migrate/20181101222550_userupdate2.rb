class Userupdate2 < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :gossips_id, :integer
    add_index :users, :gossips_id
  end
end
