class User < ActiveRecord::Base
  
  has_many :contacts
  has_many :clients
  has_many :nodes
  has_many :checks
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :validatable, :registerable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable
end
