class Gossipupdate < ActiveRecord::Migration[5.2]
  def change
    add_column :gossips, :users_id, :integer
    add_index :gossips, :users_id
  end
end
