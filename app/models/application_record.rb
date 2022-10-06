class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end
end
