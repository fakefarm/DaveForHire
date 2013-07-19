class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.string :title
      t.string :tags
      t.string :body
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
