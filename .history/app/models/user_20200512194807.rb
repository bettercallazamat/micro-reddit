# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: true, on: :create
  validates :username, length: { minimum: 5 }
end
