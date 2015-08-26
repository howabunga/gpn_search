class Allergen < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true

  has_many :allergeninfos
  # has_many :favorites
  has_many :products, :through => :allergeninfos

end
