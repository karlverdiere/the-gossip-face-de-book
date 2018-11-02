class Userupdate3 < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :gossips_id, :integer
  
  end
end
