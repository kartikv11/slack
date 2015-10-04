require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email_id => "Email",
        :is_active => false,
        :team_name => "Team Name",
        :full_name => "Full Name",
        :password => "Password"
      ),
      User.create!(
        :email_id => "Email",
        :is_active => false,
        :team_name => "Team Name",
        :full_name => "Full Name",
        :password => "Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Team Name".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
