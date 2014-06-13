class AddDetailsToFollowers < ActiveRecord::Migration
  def change
    add_index(:followers, [:user_id, :follower_user_id], :unique => true)
    add_index(:followers, [:follower_user_id, :user_id], :unique => true)
  end
end

