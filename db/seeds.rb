# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # Tu vas faire 10 utilisateurs en base avec Faker.
# 10.times do
#   User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: Faker::Number.decimal_part(digits: 2))
# end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # Tu vas faire 10 utilisateurs en base avec Faker.
# 10.times do
#   User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: Faker::Number.decimal_part(digits: 2))
# end


# Création de 10 villes
# 10.times do
#   City.create!(
#     name:Faker::Address.city, 
#     zip_code:"#{'%02d' % rand(00..77)}000"
#   )
# end
# cities_array = City.all

# Création de 10 users
30.times do |i|
  user = User.create!(first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    description: Faker::Lorem.paragraph, 
    email: Faker::Internet.email, 
    age: rand(18..99), 
   
    password: "password")
end

users_array = User.all

# Création de 20 gossips
30.times do |i|
  Gossip.create!(
    title:"Potin n°#{i}",
    content:Faker::ChuckNorris.fact,
    user:users_array[rand(0..9)]
  )
end
gossips_array = Gossip.all

# # Création de 10 tags
# 10.times do
#   Tag.create(
#     title: Faker::SlackEmoji.unique.people
#   )
# end
# tags_array = Tag.all

# # Création des Taggers, qui associent les messages à leurs tags respectifs 
# Gossip.all.each do |each_gossip|
#   random_times = rand(1..2)
#   random_times.times do 
#     Tagger.create(
#       gossip: each_gossip,
#       tag: tags_array[rand(0...tags_array.length)]
#     )
#   end
# end

# # Création de messages privés
# 10.times do
#   PrivateMessage.create(
#     content: Faker::Quote.yoda, 
#     sender: users_array[rand(0...users_array.length)],
#     recipient: users_array[rand(0...users_array.length)]
#   )
# end