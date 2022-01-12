class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: 'post_id'
  has_many :likes, foreign_key: 'post_id'

  def recent_comments
    comments.limt(5).order(created_at: :desc)
  end

  private

  def update_post_counter
    user.increment!(:post_counter)
  end
end