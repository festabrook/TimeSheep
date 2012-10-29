class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_many :time_entries
  has_secure_password

  before_save { |user| user.email = email.downcase }

  EMAIL_VALIDATOR_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, format: { with: EMAIL_VALIDATOR_PATTERN }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end