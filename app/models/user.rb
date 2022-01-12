class User < ApplicationRecord
  has_many :likes
  has_many :posts
  has_many :comments

  validates :name, presence: true
  validates :post_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def recents_posts
    posts.limit(3).order(created_at: :desc)
  end
end
