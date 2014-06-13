class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers, id: false do |t|
      t.integer :user_id
      t.integer :follower_user_id
    end
  end
end
