require 'slack-notify'
require 'clockwork'
require 'active_support/time'
require 'dotenv/load'


module Clockwork
  client = SlackNotify::Client.new(webhook_url: ENV['URL'])

  client.notify('Hello There!')
  client.notify('Good Morning!')
  client.notify('Good Night!')

  handler do |message|
    client.notify(message)
  end

  every(3.minutes, 'Scheduled Contact')
end