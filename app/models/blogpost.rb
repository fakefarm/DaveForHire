class Blogpost < ActiveRecord::Base
  attr_accessible :body, :description, :image_url, :tags, :title

  before_save :generate_slug

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= title.parameterize
  end
end
