class Client < ActiveRecord::Base
    has_one :client_setting
    has_many :nodes
    has_one :user
end
