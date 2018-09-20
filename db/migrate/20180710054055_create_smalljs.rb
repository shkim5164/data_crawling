class CreateSmalljs < ActiveRecord::Migration
  def change
    create_table :smalljs do |t|
      t.string :name
      t.integer :junguk_id
      t.timestamps null: false
    end
  end
end
