require 'telegram/bot'
require_relative 'anime.rb'
token = '1681412553:AAHlaXyUqAGqHfmdGPO2b3f8xhzGiZpzIjU'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/help'
      bot.api.send_message(chat_id: message.chat.id, text: 'All the existing commands: /help, /info, /start, /stop')
    when '/info'
      bot.api.send_message(chat_id: message.chat.id, text: "My name is Denis Diaconu and i'm a full-stack-web-Developer!")
      bot.api.send_photo(chat_id: message.chat.id, photo: Faraday::UploadIO.new('special.jpg', 'image/jpeg'))
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}, you can use /help")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    end
  end
end