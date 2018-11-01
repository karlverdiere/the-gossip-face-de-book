# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |index|
  user = User.create!(first_name: "first_name#{index}", last_name: "last_name#{index}example", description: "acoucou#{index}", email:"coco@#{index}.com",age:"#{index}")
end
