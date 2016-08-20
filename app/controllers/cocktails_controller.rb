class CocktailsController < ApplicationController

  before_action :find_cocktail, only: [:show, :upvote]

  def index
    @page_name = "Mr. Cocktails"
    @cocktails = Cocktail.all
  end
  def show
    @dose = Dose.new
  end
  def new
    @cocktail = Cocktail.new
  end
  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end
  def upvote
    @cocktail.rating += 1
    @cocktail.save
    redirect_to cocktails_path
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :rating)
  end
end
