class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :postname

      t.timestamps null: false
    end
  end
end
