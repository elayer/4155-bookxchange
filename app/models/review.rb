class Review < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :author, presence: true, length: { minimum: 3 }
  validates :rating, presence: true
  validates :text, presence: true, length: { minimum: 10 }
end
