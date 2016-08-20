class AddRatingToCocktails < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :rating, :integer, {default: 0}
  end
end
