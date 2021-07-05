class ListeIngredient < ApplicationRecord
  belongs_to :recette
  belongs_to :ingredient
end
