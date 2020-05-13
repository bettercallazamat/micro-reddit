class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: true, on: :create
  validates :username, length: { minimum: 5 }
end
