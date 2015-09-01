class Check < ActiveRecord::Base
    belongs_to :node
    has_one :user
end
