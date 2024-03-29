class User < ActiveRecord::Base
	attr_accessible :nickname, :email, :password, :password_confirmation
	has_secure_password

  	before_save { email.downcase! }

  	validates :nickname, presence: true, length: { maximum: 50 }
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, 
  			  format: { with: VALID_EMAIL_REGEX }, 
  			  uniqueness: { case_sensitive: false }
  	validates :password, length: { minimum: 6 }
  	validates :password_confirmation, presence: true
end
