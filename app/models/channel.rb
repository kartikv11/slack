class Channel < ActiveRecord::Base
	has_many :users, :through => :user_to_channel_subscriptions
	validates :channel_name, presence: true, length: { minimum: 1,  maximum: 20 }
end