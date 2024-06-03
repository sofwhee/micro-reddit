class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
end
