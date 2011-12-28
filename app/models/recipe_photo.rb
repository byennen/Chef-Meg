class RecipePhoto < ActiveRecord::Base

  belongs_to :recipe

  has_attached_file :image,
    :styles => { :small => "90x56!", :big => "640x336!" },
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => ":attachment/:id/:style/:filename",
    :bucket => "chef-meg-production"

end
