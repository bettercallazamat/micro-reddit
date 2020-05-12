class User < ApplicationRecord
  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: true, on: :create
  validates :username, length: { minimum: 5 }
end
