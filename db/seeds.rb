# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = HTTParty.get("https://api.amp.active.com/v2/search?query=running&category=event&start_date=2013-07-04..&api_key=#{ENV["SECRET_KEY"]}")


binding.pry