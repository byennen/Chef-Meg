class CreateRecipePhotos < ActiveRecord::Migration
  def change
    create_table :recipe_photos do |t|
      t.integer :recipe_id
      t.timestamps
    end
  end
end
