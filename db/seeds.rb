require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..30).each do |index|
  player = Player.new(
    first_name: Faker::Name.unique.first_name,
    last_name: Faker::Name.unique.last_name,
    email: Faker::Internet.email
  )
  player.save
end

(1..10).each do |index|
  limit = 1 + rand(5)
  players = Player.all.sample rand(5)

  club = Club.create(
    name: Faker::FunnyName.unique.name,
    description: Faker::Lorem.sentence(word_count: 1 + rand(8)),
    players: players
  )
end
