class User < ActiveRecord::Base

  has_secure_password  #automatically add attr_accessor :password, :password_confirmation

  has_many :reviews
  has_many :products, :through => :reviews

  validates_presence_of :name
  
end
