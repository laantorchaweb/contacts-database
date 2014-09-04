class Vendor < ActiveRecord::Base
    has_many :categories
    # has_many :capabilities
end
