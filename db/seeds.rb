# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")

mojito = Cocktail.create(name: "Mojito")

Dose.create(description: "one slice", cocktail: mojito, ingredient:lemon)
Dose.create(description: "3 cubes", cocktail: mojito, ingredient:ice)
Dose.create(description: "one leaf", cocktail: mojito, ingredient:mint)

require "open-uri"

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
cocktail = Cocktail.new(title: 'NES', body: "A great console")
cocktail.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
