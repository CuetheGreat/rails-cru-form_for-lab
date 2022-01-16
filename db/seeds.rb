# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artist = Artist.create(name: "Michael Jackson", bio: "The King of Pop")
genre = Genre.create(name: 'Pop')
song = Song.new
song.name = "Billie Jean"
song.genre = genre
song.artist = artist
song.save
