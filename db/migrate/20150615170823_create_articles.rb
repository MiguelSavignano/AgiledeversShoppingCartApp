class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :image_url
      t.string :image_name

      t.timestamps null: false
    end
  end
end
