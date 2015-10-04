require "rails_helper"

RSpec.describe MessageRecipientChannelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/message_recipient_channels").to route_to("message_recipient_channels#index")
    end

    it "routes to #new" do
      expect(:get => "/message_recipient_channels/new").to route_to("message_recipient_channels#new")
    end

    it "routes to #show" do
      expect(:get => "/message_recipient_channels/1").to route_to("message_recipient_channels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/message_recipient_channels/1/edit").to route_to("message_recipient_channels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/message_recipient_channels").to route_to("message_recipient_channels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/message_recipient_channels/1").to route_to("message_recipient_channels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/message_recipient_channels/1").to route_to("message_recipient_channels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/message_recipient_channels/1").to route_to("message_recipient_channels#destroy", :id => "1")
    end

  end
end
