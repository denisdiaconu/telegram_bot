# rubocop: disable Layout/LineLength
require 'telegram/bot'
require_relative '../lib/random'
require_relative '../token'

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/help'
      bot.api.send_message(chat_id: message.chat.id,
                           text: 'All the existing commands: /help, /info, /quote, /start, /stop')
    when '/info'
      bot.api.send_message(chat_id: message.chat.id,
                           text: "My name is Denis Diaconu and i'm a full-stack-web-Developer! \nYou can find me on github at: https://github.com/denisdiaconu")
      bot.api.send_photo(chat_id: message.chat.id, photo: Faraday::UploadIO.new('assets/special.jpg', 'image/jpeg'))
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}, you can use /help to see all the commands.")
    when '/quote'
      quote = NewRandom.new.quotes.sample
      quote = NewRandom.new.quotes.sample while quote.length <= 5
      bot.api.send_message(chat_id: message.chat.id, text: "Random quote:  #{quote}")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    end
  end
end

# rubocop: enable Layout/LineLength
