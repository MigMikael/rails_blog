class BlogPost < ApplicationRecord
    validates :title, presence: true, length: { minimum: 1 }
    validates :description, presence: true, length: { minimum: 1 }
    validates :summary, presence: true, length: { minimum: 1 }
    validates :content, presence: true, length: { minimum: 1 }
    validates :status, presence: true
end
