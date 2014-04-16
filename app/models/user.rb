class User < ActiveRecord::Base
  has_secure_password  #automatically add attr_accessor :password, :password_confirmation
end
