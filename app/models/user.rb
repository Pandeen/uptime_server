class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :validatable, :registerable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable
end