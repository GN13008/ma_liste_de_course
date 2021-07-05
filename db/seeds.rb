
puts "----- Cleaning Database -----"

ListeIngredient.destroy_all
Recette.destroy_all
Ingredient.destroy_all
User.destroy_all


puts "----- Seeding in process -----"

puts "Creating my user account"
guillaume = User.create!(email: "negro.guillaume@gmail.com", password: "toto123456")
guillaume.confirm
guillaume.save

puts "User is create"

puts "Creating some ingredient"

courgette = Ingredient.create(name: "courgette")
aubergine = Ingredient.create(name: "aubergine")
tomate = Ingredient.create(name: "tomate")
oignon = Ingredient.create(name: "oignon")
poivron = Ingredient.create(name: "poivron")
escalope = Ingredient.create(name: "escalope")
pates = Ingredient.create(name: "pates")
creme = Ingredient.create(name: "crème")
lardons = Ingredient.create(name: "lardons")

puts "Ingredients are created"

puts "Creating 2 recettes"

ratatouille = Recette.create!(name: "ratatouille")
ListeIngredient.create!(recette_id: ratatouille.id, ingredient_id: courgette.id, quantity: 350, unit: "gr")
ListeIngredient.create!(recette_id: ratatouille.id, ingredient_id: oignon.id, quantity: 350, unit: "gr")
ListeIngredient.create!(recette_id: ratatouille.id, ingredient_id: poivron.id, quantity: 350, unit: "gr")
ListeIngredient.create!(recette_id: ratatouille.id, ingredient_id: aubergine.id, quantity: 350, unit: "gr")
ListeIngredient.create!(recette_id: ratatouille.id, ingredient_id: tomate.id, quantity: 500, unit: "gr")
ListeIngredient.create!(recette_id: ratatouille.id, ingredient_id: escalope.id, quantity: 300, unit: "gr")

pate_carbo = Recette.create!(name: "Pates à la carbonara")
ListeIngredient.create!(recette_id: pate_carbo.id, ingredient_id: pates.id, quantity: 250, unit: "gr")
ListeIngredient.create!(recette_id: pate_carbo.id, ingredient_id: creme.id, quantity: 50, unit: "ml")
ListeIngredient.create!(recette_id: pate_carbo.id, ingredient_id: lardons.id, quantity: 250, unit: "gr")

puts "Recette are done"

