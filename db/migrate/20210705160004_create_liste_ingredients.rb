class CreateListeIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :liste_ingredients do |t|
      t.references :recette, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
