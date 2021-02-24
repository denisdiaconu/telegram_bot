# TELEGRAM BOT


[![forthebadge](https://forthebadge.com/images/badges/made-with-ruby.svg)](https://forthebadge.com)

> This is a telegram bot that I build using ruby. It gives back info about me and it tells a random quote when you ask for it.

![Screenshot](https://github.com/denisdiaconu/telegram_bot/blob/test/Screenshot%20from%202021-02-23%2014-49-32.png)

## Built With

- Ruby
- The Telegram Bot API

## How to Install

- The first step is to create a Telegram account. (If you already have an account you can skip this step)
- The second step is to search for @BotFather(You can use it to create new bot accounts and manage your existing bots.)
- The third step is to type '/newbot'.The BotFather will ask you to choose a name and it will give you an API token. You can use this token to control your bot.
- Fork this repo
- You can install the required gem by typing inside your terminal 'gem install telegram-bot-ruby'(telegram-bot-ruby should be installed now)
- Clone this repo in your local machine by typing inside your terminal 'clone https://github.com/denisdiaconu/telegram_bot.git'
- Create a file named token.rb inside the repo.(you can use 'touch token.rb')
- Inside 'token.rb' create a variable with the name 'TOKEN' that is equal to the API token you got from BotFather.(TOKEN = "put your token here")
- The bot is now ready to run!
- You can run it by typing inside your terminal 'ruby bin/main.rb'
- You can stop the bot using 'Ctrl + c'
- Tou can go on telegram and search for your bot by the name you gave him before.
- The bot responds to the commands '/help, /info, /quote, /start, /stop'
- /start = Says 'hi' to the user.
- /help = Print all the existing commands that the user can use.
- /info = Gives back info about the creator of the bot.
- /quote = Gives back a random quote.
- /stop = Says 'bye' to the user.


## How to Run Tests

- The first step is to install the required gem by typing inside your terminal 'gem install rspec'(RSpec should be installed now)
- The second step is to cd into the project folder
- The third step is to run the command 'rspec spec/random_spec.rb'
- All tests are running now.


## Authors

👤 **Denis Andrei Diaconu**

- GitHub: [@DenisDiaconu](https://github.com/denisdiaconu)
- Twitter: [@DenisAndreiDia1](https://twitter.com/DenisAndreiDia1)
- LinkedIn: [Denis Diaconu](https://www.linkedin.com/in/denis-diaconu-1394091b7/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](lic.url) licensed.
