class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.integer :section
      t.integer :hit
      t.string :event
      t.string :region1
      t.string :region2
      t.timestamps null: false
    end
  end
end
