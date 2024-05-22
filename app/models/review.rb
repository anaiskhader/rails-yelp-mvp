class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = (0..5)

  validates :rating, inclusion: { in: RATING }
  validates :rating, numericality: { only_integer: true }

  validates :content, presence: true
end
