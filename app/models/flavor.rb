class Flavor < ActiveRecord::Base

  validates :name, :presence => true

  has_many :marketterms
  has_many :favorites
  has_many :products, :through => :marketterms

end
