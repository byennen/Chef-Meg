class AddAttachmentImageToRecipePhoto < ActiveRecord::Migration
  def self.up
    add_column :recipe_photos, :image_file_name, :string
    add_column :recipe_photos, :image_content_type, :string
    add_column :recipe_photos, :image_file_size, :integer
    add_column :recipe_photos, :image_updated_at, :datetime
  end

  def self.down
    remove_column :recipe_photos, :image_file_name
    remove_column :recipe_photos, :image_content_type
    remove_column :recipe_photos, :image_file_size
    remove_column :recipe_photos, :image_updated_at
  end
end
