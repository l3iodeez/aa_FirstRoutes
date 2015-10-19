# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  user = User.create!(username: "user#{i+1}@email.com")
  3.times do |j|
    contact = user.contacts.create!(name: "User#{i+1}'s contact#{j+1}", email: "contact#{j+1}@email.com")
    contact.contact_shares.create!(user_id: (((1..i).to_a - [i]).sample)|| 2, contact_id: j+1 )
  end
end
