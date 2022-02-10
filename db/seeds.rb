# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
Medic.destroy_all
Patient.destroy_all
100.times do

    user = Medic.create!(first_name: Faker::FunnyName.name, last_name: Faker::Name.name, specialty: Faker::Job.title, zip_code: Faker::Address.postcode)
    user = Patient.create!(first_name: Faker::FunnyName.name, last_name: Faker::Name.name)
    #user = User.create!(first_name: Faker::Name.first_name, email: Faker::Internet.email)

end


#require 'faker'
#Medic.destroy_all
#100.times do
  #medic = Medic.create!(first_name: Faker::Name.first_name)
#end
