class ChangeUserTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :name, :email

    add_column :users, :username, :string, unique: true, null: false
  end
end
