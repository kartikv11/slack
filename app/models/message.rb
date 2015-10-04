class Message < ActiveRecord::Base
  belongs_to :user
  has_many :message_recipient_channels
  has_many :message_recipient_users
  validates :content, presence: true, length: { minimum: 1, maximum: 260 }
  validates :user, presence: true, unless: ->(provider){provider.user.present?} 
end
