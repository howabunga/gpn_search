class Favorite < ActiveRecord::Base

  validates :flavor, :presence => true
  validates :user, :presence => true
  validates :allergen, :presence => true
  validates :product, :presence => true

  belongs_to :flavor
  belongs_to :user
  belongs_to :allergen
  belongs_to :product

end
