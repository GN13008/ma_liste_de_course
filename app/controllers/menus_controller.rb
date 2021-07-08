class MenusController < ApplicationController
  def new
    @semaines = ["Lundi midi", "Lundi soir", "Mardi midi", "Mardi soir", "Mercredi midi", "Mercredi soir", "Jeudi midi", "Jeudi soir", "Vendredi midi", "Vendredi soir", "Samedi midi", "Samedi soir", "Dimanche midi", "Dimanche soir"]
    @recettes = Recette.all.map {|recette| recette.name}
  end
  def liste
  #   @rides = Ride.all
    @recettes = params.values.first(14)
    @liste = {}
    @recettes.each do |recette|
      unless recette == ""
        Recette.where(name: recette).first.liste_ingredients.each do |liste_ingredient|
          if @liste[liste_ingredient.ingredient.name].nil?
            @liste[liste_ingredient.ingredient.name] = [liste_ingredient.quantity, liste_ingredient.unit]
          else
            @liste[liste_ingredient.ingredient.name][0] += liste_ingredient.quantity
          end
        end
      end
    end
  end
end
