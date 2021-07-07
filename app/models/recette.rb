class Recette < ApplicationRecord
  has_many :liste_ingredients
  has_many :ingredients, through: :liste_ingredients
  has_many :menus
end
