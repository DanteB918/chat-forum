class Forum < ApplicationRecord
  belongs_to :user
  has_many :comment

  validates :title, presence: true
  validates :description, presence: true
  # validates :user_id, presence: true
end
