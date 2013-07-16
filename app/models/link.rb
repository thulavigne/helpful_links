class Link < ActiveRecord::Base
  attr_accessible :description, :link, :title, :time
  validates :title, :presence => true
end
