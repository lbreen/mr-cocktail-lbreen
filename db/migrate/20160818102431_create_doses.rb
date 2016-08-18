class CreateDoses < ActiveRecord::Migration[5.0]
  def change
    create_table :doses do |t|
      t.references :cocktail, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.text :description

      t.timestamps null: false
    end
  end
end
