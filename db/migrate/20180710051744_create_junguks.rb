class CreateJunguks < ActiveRecord::Migration
  def change
    create_table :junguks do |t|
      t.string :region1
      
      t.timestamps null: false
    end
  end
end
