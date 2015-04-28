class AddPostIdtoAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :post_id, :integer
    remove_column :posts, :post_id, :integer
  end
end
