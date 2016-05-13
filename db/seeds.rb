# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.upto(10) do |i|
  User.create(name: "testuser#{i}",
              email: "test#{i}@gmail.com",
              password: "12345678",
              password_confirmation: "12345678")
end

0.upto(50) do |i|
  user = User.all.shuffle.first
  group = Group.create(title: "Group #{i}",
              description: "This is group #{i}",
              user_id: user.id)
  group.members << user
  group.posts.create(content: "Test content #{i}", user_id: user.id)
end
