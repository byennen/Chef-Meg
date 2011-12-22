class Recipe < ActiveRecord::Base

  # Smart urls
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
