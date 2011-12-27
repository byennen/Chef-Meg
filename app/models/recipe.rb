class Recipe < ActiveRecord::Base

  has_many :recipe_photos, :dependent => :destroy

  # Smart urls
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
