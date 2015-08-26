class Allergeninfo < ActiveRecord::Base

  validates :name, :presence => true
  validates :product_id, :presence => true
  validates :allergen_id, :presence => true

  belongs_to :product
  belongs_to :allergen

end
