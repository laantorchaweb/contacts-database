class CreateCategoriesVendorsJoin < ActiveRecord::Migration

    def self.up
      create_table 'categories_vendors', :id => false do |t|
        t.column :category_id, :integer
        t.column :vendor_id, :integer
      end
    end

    def self.down
        drop_table 'categories_vendors'
    end
end
