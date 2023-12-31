class User < ApplicationRecord
  has_many :forum, dependent: :destroy
  has_many :comment

  # foreign_key: "user_id",
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
