class UserToChannelSubscription < ActiveRecord::Base
  belongs_to :channel
  belongs_to :user
  validates :channel, presence: true, unless: ->(provider){provider.channel.present?}
  validates :user, presence: true, unless: ->(provider){provider.user.present?}
end
