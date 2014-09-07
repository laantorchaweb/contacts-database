class Vendor < ActiveRecord::Base
    has_and_belongs_to_many :categories
    has_and_belongs_to_many :capabilities
    # has_many :capabilities

    def self.search(search)
      if search
        where('name LIKE ?', "%#{search}%")
      else
        all
      end
    end
end
