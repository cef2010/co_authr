class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.belongs_to :user
      t.string :title
      t.text :author_list
      t.text :abstract
      t.string :link_to_pub

      t.timestamps null: false
    end
  end
end
