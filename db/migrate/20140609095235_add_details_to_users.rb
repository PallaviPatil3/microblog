class AddDetailsToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.integer :followers_num, default: 0
    end
  end
end
