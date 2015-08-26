class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates :email, :presence => true, :uniqueness => true

  has_many :favorites
  has_many :allergens, :through => :favorites
  has_many :flavors, :through => :favorites
  has_many :products, :through => :favorites

end
