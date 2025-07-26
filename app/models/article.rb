class Article < ApplicationRecord
belongs_to :user
has_many :article_categories
has_many :categories, through: :article_categories
has_many :comments, dependent: :destroy
has_many :ratings, dependent: :destroy
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
    def average_rating
        avg = ratings.average(:score)
        avg ? avg.to_f.round(1) : 0.0
      end
end