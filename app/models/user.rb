class User < ApplicationRecord
    validates :name, presence: true
  validates :posts_counter, comparison: { greater_than_or_equal_to: 0 }

  has_many :posts, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id
  
    def most_recent_5_comments
      comments.order(created_at: :desc).limit(3)
    end
end
