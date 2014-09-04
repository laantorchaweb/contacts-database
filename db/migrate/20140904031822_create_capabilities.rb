class CreateCapabilities < ActiveRecord::Migration
  def change
    create_table :capabilities do |t|
      t.string :name

      t.timestamps
    end
  end
end
