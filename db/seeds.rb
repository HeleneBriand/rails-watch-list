# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require 'faker'
puts "Creating restaurants..."
10.times do
movies = Movie.create(title: Faker::Movie.title, overview: Faker::Movie.quote, poster_url: Faker::Internet.url, rating: Faker::Number.between(from: 0.0, to: 1.0))
end
puts "Finished"
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

###################
# si on veut faire avec API
###################

#installer gem "open-uri" dans GemFile
#require "open-uri"
# URI.open("https://tmdb.lewagon.com/movie/top_rated").read
# movies_api = JSON.parse(URI.open("https://tmdb.lewagon.com/movie/top_rated").read)
# movies_api["results"].each do |movie|
#     Movie.create!(title: movie["original_title"], overview: movie["overview"], poster_url: movie["poster_path"],rating: movie["vote_average"])
# end
