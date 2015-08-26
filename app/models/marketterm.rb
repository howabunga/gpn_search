class Marketterm < ActiveRecord::Base

  validates :name, :presence => true
  validates :flavor_id, :presence => true
  validates :product_id, :presence => true

  belongs_to :flavor
  belongs_to :product

end
