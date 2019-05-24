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
url = "https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/2HqZxjJ/videoblocks-cola-with-ice-close-up-for-a-very-large-glass-of-cold-coke-with-ice-cubes-rotation_sm8lm4k7cg_thumbnail-full01.png"
cocktail = Cocktail.new(name: "Virgin cuba libre")
cocktail.remote_photo_url = url
cocktail.save!
url = "https://www.tablespoon.com/-/media/Images/Articles/Images-for-Posts-PrePandoNext/2016/12/non-alcoholic-pineapple-orange-sherbert-punch.jpg?la=en"
cocktail = Cocktail.new(name: "Pineapple-Orange Sherbert Punch")
cocktail.remote_photo_url = url
cocktail.save!
url = "https://www.tablespoon.com/-/media/Images/Articles/Images-for-Posts-PrePandoNext/2016/12/non-alcoholic-pineapple-ginger-sparkler.jpg?la=en"
cocktail = Cocktail.new(name: "Pineapple Ginger Sparkler")
cocktail.remote_photo_url = url
cocktail.save!
url = "https://www.tablespoon.com/-/media/Images/Articles/Images-for-Posts-PrePandoNext/2016/12/non-alcoholic-sangria.jpg?la=en"
cocktail = Cocktail.new(name: "Non-Alcoholic Sangria")
cocktail.remote_photo_url = url
cocktail.save!

puts "creating doses"
Dose.create!(description: "all", cocktail_id: Cocktail.first.id, ingredient_id: Ingredient.find(12).id)

puts "finished"
