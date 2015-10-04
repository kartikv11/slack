require 'rails_helper'

RSpec.describe User, type: :model do
  
  it "is an invalid User" do
    expect(FactoryGirl.build(:invalidUser)).to_not be_valid
  end

  it "is a valid user" do
  	expect(FactoryGirl.build(:validUser)).to be_valid
  end

end
