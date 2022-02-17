class Element < ApplicationRecord
    has_many :characters
    has_one_attached :image
end
