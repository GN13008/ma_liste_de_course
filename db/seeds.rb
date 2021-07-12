
puts "----- Cleaning Database -----"

ListeIngredient.destroy_all
Recette.destroy_all
Ingredient.destroy_all
User.destroy_all


puts "----- Seeding in process -----"

puts "Creating my user account"
guillaume = User.create!(email: "negro.guillaume@gmail.com", password: "password")
guillaume.confirm
guillaume.save

puts "User is create"

puts "Creating some ingredient"

lardons = Ingredient.create(name: "lardons", rayon: "3-charcuterie")
courgette = Ingredient.create(name: "courgette", rayon: "1-legumes")
aubergine = Ingredient.create(name: "aubergine", rayon: "1-legumes")
tomate = Ingredient.create(name: "tomate", rayon: "1-legumes")
oignon = Ingredient.create(name: "oignon", rayon: "1-legumes")
poivron = Ingredient.create(name: "poivron", rayon: "1-legumes")
escalope = Ingredient.create(name: "escalope", rayon: "2-viandes")
pates = Ingredient.create(name: "pates", rayon: "5-pates/conserve")
creme = Ingredient.create(name: "crème", rayon: "4-produit laitier")
pate_brise = Ingredient.create(name: "Pate brisé", rayon: "4-produit laitier")
moutarde = Ingredient.create(name: "Moutarde à l'ancienne", rayon: "5-pates/conserve")
rape = Ingredient.create(name: "Gruyère rapé", rayon: "4-produit laitier")

puts "Ingredients are created"

puts "Creating recettes"

ratatouille = Recette.create!(name: "ratatouille - riz - escalope")
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

tarte_tomate = Recette.create!(name: "tarte tomate - harico")
ListeIngredient.create!(recette_id: tarte_tomate.id, ingredient_id: pate_brise.id, quantity: 1, unit: "unit")
ListeIngredient.create!(recette_id: tarte_tomate.id, ingredient_id: moutarde.id, quantity: 1, unit: "unit")
ListeIngredient.create!(recette_id: tarte_tomate.id, ingredient_id: rape.id, quantity: 250, unit: "gr")

puts "Recette are done"

