class Recipe < ActiveRecord::Base

  has_many :recipe_photos, :dependent => :destroy
  has_many :ingredients, :dependent => :destroy
  accepts_nested_attributes_for :recipe_photos, :reject_if => lambda { |attrs| attrs.all? { |key, value| value.blank? }}, :allow_destroy => true
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |attrs| attrs.all? { |key, value| value.blank? }}, :allow_destroy => true

  # Smart urls
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
