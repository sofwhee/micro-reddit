class Post < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
end
