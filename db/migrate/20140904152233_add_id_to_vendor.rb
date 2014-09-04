class AddIdToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :vendor_id, :integer
  end
end
