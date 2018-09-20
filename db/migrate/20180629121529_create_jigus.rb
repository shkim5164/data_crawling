class CreateJigus < ActiveRecord::Migration
  def change
    create_table :jigus do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
