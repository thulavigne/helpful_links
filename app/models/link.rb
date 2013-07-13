class Link < ActiveRecord::Base
  attr_accessible :description, :link, :title
  validates :title, :presence => true
end
