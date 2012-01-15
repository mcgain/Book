class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :description
      t.decimal :rating
      t.string :image_url
      t.string :amazon_url

      t.timestamps
    end
  end
end
