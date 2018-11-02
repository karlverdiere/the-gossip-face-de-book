class Userupdate < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :first_name , :string
    remove_column :users, :last_name , :string
    remove_column :users, :description , :text
    remove_column :users, :age, :integer
    add_column :users, :password, :string
    add_column :users, :name, :string
  end
end
