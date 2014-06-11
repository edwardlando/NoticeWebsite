class SendSmsController < ApplicationController
  require 'rubygems' # not necessary with ruby 1.9 but included for completeness
  require 'twilio-ruby'

  def sms
    # Notice credentials
    account_sid = 'ACb7672961cbc0424c22adccae50daca3f'
    auth_token = '2243466402a46e6bb9feb47fa26c5d6d'

    @number = params[:phone]

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create(
      :from => '+2674607931',
      :to => @number,
      :body => 'https://itunes.apple.com/us/app/notice-the-beat-of-your-campus/id829934488?mt=8'
      # this link will change in the new version
    )
  end
end