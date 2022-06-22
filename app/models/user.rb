class User < ApplicationRecord
  has_many :movies, dependent: :destroy

  validates :email, uniqueness: true
end
