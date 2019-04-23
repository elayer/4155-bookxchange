class Book < ApplicationRecord
    belongs_to :user, optional: true
    
    def self.search(search)
        if search
            self.where(title: search)
            self.where(author: search)
        else Book.all
        end
    end
    
end