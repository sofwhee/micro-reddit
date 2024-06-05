class User < ApplicationRecord
  has_many :posts

  validates :name, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }
  validates :email, presence: true, uniqueness: true, format: URI::MailTo::EMAIL_REGEXP
end
