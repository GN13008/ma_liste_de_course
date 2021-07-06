class RecettesController < ApplicationController
  def index
    @recettes = Recette.all
  end
end
