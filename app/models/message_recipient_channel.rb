class MessageRecipientChannel < ActiveRecord::Base
  belongs_to :message
  belongs_to :channel
  validates :channel, presence: true
  validates :message, presence: true
  validates :channel, presence: true, unless: ->(provider){provider.channel.present?}
  validates :message, presence: true, unless: ->(provider){provider.message.present?}
end
