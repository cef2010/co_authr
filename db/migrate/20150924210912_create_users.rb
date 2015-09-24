class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :turn_ons, array:true
      t.text :turn_offs, array:true
      t.string :university
      t.string :dept
      t.text :matches, array:true
      t.text :about_me

      t.timestamps null: false
    end
  end 
end
