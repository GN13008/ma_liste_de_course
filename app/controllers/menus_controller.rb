class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :liste ]
  def new
    @semaines = ["Lundi midi", "Lundi soir", "Mardi midi", "Mardi soir", "Mercredi midi", "Mercredi soir", "Jeudi midi", "Jeudi soir", "Vendredi midi", "Vendredi soir", "Samedi midi", "Samedi soir", "Dimanche midi", "Dimanche soir"]
    @recettes = Recette.all.map {|recette| recette.name}
  end
  def liste
    @recettes = params.values.first(14)
    @liste = {}
    @recettes.each do |recette|
      unless recette == ""
        Recette.where(name: recette).first.liste_ingredients.each do |liste_ingredient|
          if @liste[liste_ingredient.ingredient.name].nil?
            @liste[liste_ingredient.ingredient.name] = [liste_ingredient.quantity, liste_ingredient.unit, liste_ingredient.ingredient.rayon]
          else
            @liste[liste_ingredient.ingredient.name][0] += liste_ingredient.quantity
          end
        end
      end
    end
    rayons = @liste.values.map {|a| a[2]}
    rayons = rayons.uniq
    rayons = rayons.sort
    @a_listes = {}
    rayons.each do |rayon|
      @a_listes[rayon] = []
    end
    @liste.each do |key, value|
      @a_listes[value[2]] << {ingredient: key, quantite: value[0], unite: value[1]}
    end
  end
end
