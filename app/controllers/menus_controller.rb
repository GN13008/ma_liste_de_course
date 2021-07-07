class MenusController < ApplicationController
  def new
    @semaines = ["Lundi midi", "Lundi soir", "Mardi midi", "Mardi soir", "Mercredi midi", "Mercredi soir", "Jeudi midi", "Jeudi soir", "Vendredi midi", "Vendredi soir", "Samedi midi", "Samedi soir", "Dimanche midi", "Dimanche soir"]
    @recettes = Recette.all.map {|recette| recette.name}
  end
  def liste
  end
end
