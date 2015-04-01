require 'rails_helper'

describe Message, :vcr => true do
  it "adds an error if the number is invalid" do
    message = Message.new(:body => "hello", :to => "111111", :from => "4802073339")
    message.save
    message.errors[:base].should eq ["The 'To' number 111111 is not a valid phone number."]
  end

  it "doesn't save the message if Twilio gives an error" do
    message = Message.new(:body => "hello", :to => "111111", :from => "4802073339")
    message.save
    message.save.should be_false
  end
end
