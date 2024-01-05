class Question < ApplicationRecord
    validates :title, presence: true
    validates :name, presence: true
    validates :body, presence: true, length: {minimum: 5}
end
