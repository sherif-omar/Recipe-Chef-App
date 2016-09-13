class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :summary
      t.text :description
      t.string :picture
      t.integer :chef_id

      t.timestamps null: false
    end
  end
end
