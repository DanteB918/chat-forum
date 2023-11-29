class Forum < ApplicationRecord
  belongs_to :user
  has_many :comment

  validates :title, presence: true, length: { minimum: 5}
  validates :description, presence: true, length: { minimum: 20}
  # validates :user_id, presence: true
end
