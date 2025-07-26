class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :article
  validates :score, presence: true, inclusion: { in: 1..5 }
  validates :user_id, uniqueness: { scope: :article_id, message: "has already rated this article" }
end
