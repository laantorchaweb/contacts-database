class CreateCapabilitiesVendorsJoin < ActiveRecord::Migration
    def self.up
      create_table 'capabilities_vendors', :id => false do |t|
        t.column :capability_id, :integer
        t.column :vendor_id, :integer
      end
    end

    def self.down
        drop_table 'capabilities_vendors'
    end
end
