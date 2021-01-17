class User < ApplicationRecord
  has_secure_password
  has_many :companys

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
