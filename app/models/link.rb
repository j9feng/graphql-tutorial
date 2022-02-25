class Link < ApplicationRecord
    belongs_to :user, optional: true

    validates :url, presence: true, length: {minimum:5, maximum:140}
    validates :description, presence: true, length: {minimum:5, maximum:280}
    has_many :votes
end
