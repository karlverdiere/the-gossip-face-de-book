class Addlike < ActiveRecord::Migration[5.2]
  def change
    add_column :gossips, :likes_id, :integer
    add_index :gossips, :likes_id
    add_column :users, :likes_id, :integer
    add_index :users, :likes_id
  end
end
