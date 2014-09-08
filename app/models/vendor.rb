class Vendor < ActiveRecord::Base
    has_and_belongs_to_many :categories
    has_and_belongs_to_many :capabilities
    # has_many :capabilities

    has_attached_file :image, :whiny => false, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

    validates_attachment :image, :content_type => { :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"] }

    def self.search(search)
      if search
        where('name LIKE ?', "%#{search}%")
      else
        all
      end
    end
end
