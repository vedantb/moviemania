class Review < ActiveRecord::Base
  attr_accessible :content, :movie_name, :user_id
  validates :user_id, presence: true
  belongs_to :user
  default_scope order: 'reviews.created_at DESC'
  validates :content, presence: true
  validates :user_id, presence:true
end
