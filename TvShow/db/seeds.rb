# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

channel1 = Channel.create(name: "Star Sports")
channel2 = Channel.create(name: "Ten Sports")
channel3 = Channel.create(name: "ESPN")
channel4 = Channel.create(name: "Jio Sports")

channel1.tv_series.create(name: 'IND vs PAK Highlights', start_time: '12:00', end_time: '13:00')
channel1.tv_series.create(name: 'IND vs AUS Highlights', start_time: '13:00', end_time: '14:00')
channel1.tv_series.create(name: 'Talk Show', start_time: '14:00', end_time: '15:00')
channel2.tv_series.create(name: 'Strategy', start_time: '15:00', end_time: '16:00')
channel2.tv_series.create(name: 'IPL Highlights', start_time: '16:00', end_time: '17:00')
channel2.tv_series.create(name: 'Talk Show', start_time: '17:00', end_time: '18:00')
channel3.tv_series.create(name: 'IPL Showdown', start_time: '12:00', end_time: '13:00')
channel3.tv_series.create(name: 'Talk with Kohli', start_time: '13:00', end_time: '14:00')
channel3.tv_series.create(name: 'IPL 2019 Final Highlights', start_time: '14:00', end_time: '15:00')
channel4.tv_series.create(name: 'Talk with Dhoni', start_time: '15:00', end_time: '16:00')
channel4.tv_series.create(name: 'World Cup Highlights', start_time: '16:00', end_time: '17:00')
channel4.tv_series.create(name: 'IPL Strategy', start_time: '17:00', end_time: '18:00')
