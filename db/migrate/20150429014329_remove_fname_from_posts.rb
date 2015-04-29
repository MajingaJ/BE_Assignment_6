class RemoveFnameFromPosts < ActiveRecord::Migration
  def self.up
    remove_column :posts, :fname, :string
  end
end
