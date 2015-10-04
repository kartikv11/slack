class MessageRecipientUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  validates :user, presence: true
  validates :message, presence: true
  validates :user, presence: true, unless: ->(provider){provider.user.present?}
  validates :message, presence: true, unless: ->(provider){provider.message.present?}
end
