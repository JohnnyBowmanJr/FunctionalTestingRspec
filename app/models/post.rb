class Post < ActiveRecord::Base
  attr_accessible :author_id, :blog_id, :body, :title

  has_many :posts
  belongs_to :blog
  belongs_to :author

  validates :title, :presence => true
  validates :body, :presence => true
end
