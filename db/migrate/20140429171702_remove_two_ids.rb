class RemoveTwoIds < ActiveRecord::Migration
  def change
  	remove_column :locations, :user_id_r
  	rename_column :locations, :user_id_s, :user_id
  	remove_column :locations, :post_timestamp
  end
end
