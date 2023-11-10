class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :forum

  validates :message, presence: true
end
