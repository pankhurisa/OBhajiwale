class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :recoverable, :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :firstname, :lastname, :phone, :address_line_1, :address_line_2, :area, :city, :postal_code,
                  :email,
                  :password, :password_confirmation, :remember_me
end
