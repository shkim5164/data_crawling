class CreateRefcenters < ActiveRecord::Migration
  def change
    create_table :refcenters do |t|
      t.string :club_n
      
      t.timestamps null: false
    end
  end
end
