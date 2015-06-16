class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :image_url
      t.string :image_name

      t.timestamps null: false
    end
  end
end
