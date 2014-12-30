class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  attr_accessor :name, :email
  has_many :microposts


  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validate :email, format: { with: VALID_EMAIL_REGEX },
            uniqueness: true
  has_secure_password
  validates :password, length: { minimum: 6 }
end
