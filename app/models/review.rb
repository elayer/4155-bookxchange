class Review < ApplicationRecord
    validates :rating, presence: true, length: { maximum: 10 }
end
