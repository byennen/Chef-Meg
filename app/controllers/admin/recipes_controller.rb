class Admin::RecipesController < ApplicationController
  layout 'admin'

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(params[:recipe])

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to (admin_recipe_url), notice: 'Recipe was successfully created.' }
       else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      if @recipe.update_attributes(params[:recipe])
        format.html { redirect_to (admin_recipe_url), notice: 'Recipe was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to admin_recipes_url }
    end
  end
end
