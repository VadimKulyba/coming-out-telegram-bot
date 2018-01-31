require 'telegram/bot'
require_relative 'lib/message_answer'

TOKEN = '488057424:AAFAudk-bOmDTqDOWZJeGyICW34Fk7ybI1A'.freeze

Telegram::Bot::Client.run(TOKEN) do |bot|
  answer = MessageAnswer.new
  bot.listen do |message|
    options = { bot: bot, message: message }
    answer.init_message(options)
    answer.respond
  end
end
