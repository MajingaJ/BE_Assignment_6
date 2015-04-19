class Post < ActiveRecord::Base
  validates :postname, presence: true, uniqueness: true
  validates :fname, presence: true
end
