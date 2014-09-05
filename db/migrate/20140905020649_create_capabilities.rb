class CreateCapabilities < ActiveRecord::Migration
  def change
    create_table :capabilities do |t|
      t.references :vendor, index: true
      t.string :name

      t.timestamps
    end
  end
end
