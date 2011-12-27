class HomeController < ApplicationController
  def index
    @recipes = Recipe.all
    @photo = RecipePhoto.all
  end
end
