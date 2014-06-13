class User < ActiveRecord::Base
  has_many :tweets, dependent: :destroy
  has_and_belongs_to_many :followers,
                          class_name: "User",
                          join_table: :followers,
                          foreign_key: :user_id,
                          association_foreign_key: :follower_user_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
end
