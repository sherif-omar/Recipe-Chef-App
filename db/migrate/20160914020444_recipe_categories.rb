class RecipeCategories < ActiveRecord::Migration
  def change
    create_table :recipe_categories do |t|
      t.integer :recipe_id ,:category_id
    end
  end
end
