class Node < ActiveRecord::Base
    belongs_to :client
    has_many :checks
    has_one :user
end
