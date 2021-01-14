class AddRolesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin_role, :boolean, default: false
    add_column :users, :guest_role, :boolean, default: true
    add_column :users, :owner_role, :boolean, default: false
  end
end
