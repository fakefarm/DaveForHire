class ChangeBlogPostBodyToText < ActiveRecord::Migration
  def change
    change_column :blogposts, :body, :text
  end
end
