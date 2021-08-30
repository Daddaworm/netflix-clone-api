# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Clearing previous seed data...'
User.destroy_all
Movie.destroy_all
Favorite.destroy_all

puts 'Creating new data........................'

puts 'Seeding user data........................'
User.create(username: 'Ethan', email: 'ethan@yahoo.com', password: '1234', password_confirmation: '1234')

puts 'Seeding movie data........................'
Movie.create(title: 'Lord of the Rings', movie_overview: Faker::Lorem.question(word_count: 10), poster_url: 'https://img.moviepostershop.com/lord-of-the-rings-1-the-fellowship-of-the-ring-movie-poster-2001-1010186895.jpg')

puts 'Seeding favorites data...................'
Favorite.create(user_id: 1, movie_id: 1)