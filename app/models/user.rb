class User < ActiveRecord::Base
	
	has_many :messages
	has_many :channels, :through => :user_to_channel_subscriptions
	before_save { self.email_id = email_id.downcase }
	validates :full_name, presence: true, length: { maximum: 30 }
	validates :team_name, presence: true, length: { maximum: 20 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email_id, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 6, maximum: 20 }

end
