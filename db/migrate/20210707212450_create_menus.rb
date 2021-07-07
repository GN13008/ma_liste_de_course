class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :day
      t.string :meal
      t.references :recette, null: false, foreign_key: true

      t.timestamps
    end
  end
end
