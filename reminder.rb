require 'discordrb'
require 'dotenv/load'
require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new
bot = Discordrb::Bot.new token: ENV["DISCORD_TOKEN"]
channel_id = ENV["CHANNEL_ID"]

scheduler.cron '0 10 * * *' do
  bot.send_message(channel_id, 'O que você vai fazer hoje? @everyone')
  bot.run 
end

scheduler.join
