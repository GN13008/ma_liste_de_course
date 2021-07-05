class CreateRecettes < ActiveRecord::Migration[6.1]
  def change
    create_table :recettes do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
