class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.string :jigu
      t.string :code
      t.string :event
      t.timestamps null: false
    end
  end
end
