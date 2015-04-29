class RemoveLnameFromPosts < ActiveRecord::Migration
  def self.up
    remove_column :posts, :lname, :string
  end
end
