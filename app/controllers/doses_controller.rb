class DosesController < ApplicationController

  before_action :find_cocktail, only: [:new, :create]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = @cocktail.id
    @dose.save ? (redirect_to cocktail_path(@cocktail)) : (render :new)
  end
  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:cocktail_id, :ingredient_id, :description)
  end
end
