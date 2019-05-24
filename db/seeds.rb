# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying database"
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

puts "creating ingredients"

Ingredient.create!(name: "lemon")
Ingredient.create!(name: "orange")
Ingredient.create!(name: "lime")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "orange juice")
Ingredient.create!(name: "pinaple juice")
Ingredient.create!(name: "coconut milk")
Ingredient.create!(name: "milk")
Ingredient.create!(name: "soy milk")
Ingredient.create!(name: "apple juice")
Ingredient.create!(name: "lime juice")
Ingredient.create!(name: "coke")
Ingredient.create!(name: "sprite")
Ingredient.create!(name: "water")
Ingredient.create!(name: "ice tea")
Ingredient.create!(name: "syrup")
Ingredient.create!(name: "blueberry")
Ingredient.create!(name: "pear")
Ingredient.create!(name: "cider")
Ingredient.create!(name: "kiwi")
Ingredient.create!(name: "grapes")
Ingredient.create!(name: "almond")
Ingredient.create!(name: "grapefruit")
Ingredient.create!(name: "mint")
Ingredient.create!(name: "watermelon")
Ingredient.create!(name: "melon")

puts "creating cocktails"
Cocktail.create!(name: "Virgin cuba libre")

puts "creating doses"
Dose.create!(description: "all", cocktail_id: Cocktail.first.id, ingredient_id: Ingredient[11].id)

puts "finished"
