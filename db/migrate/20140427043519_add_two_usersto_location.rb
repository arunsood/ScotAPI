class AddTwoUserstoLocation < ActiveRecord::Migration
  def change
  	remove_column :locations, :user_id
  	add_column :locations, :user_id_s, :integer
  	add_column :locations, :user_id_r, :integer
  end
end
