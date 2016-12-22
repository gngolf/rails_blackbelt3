class User < ApplicationRecord
  has_secure_password
  has_many :ideas
  has_many :ideas_liked, through: :likes, source: :idea
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :alias, :email, :password, :password_confirmation, presence: true
  validates :email, uniqueness: { case_sensitive: true }, format: { with: EMAIL_REGEX }
end
