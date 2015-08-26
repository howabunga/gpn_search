class Product < ActiveRecord::Base

  validates :image, :presence => true
  validates :name, :presence => true
  validates :brand_id, :presence => true
  validates :delivery_id, :presence => true

  has_many :allergeninfos
  has_many :marketterms
  has_many :favorites
  belongs_to :brand
  belongs_to :delivery
  has_many :allergens, :through => :allergeninfos
  has_many :flavors, :through => :marketterms

mount_uploader :image, ImageUploader

end
