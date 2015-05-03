class Post < ActiveRecord::Base
  validates :postname, presence: true, uniqueness: true
  validates :email, presence: true

  belongs_to :author

end
