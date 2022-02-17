class Weapon < ApplicationRecord
    has_many :character

    validates :name, presence: true
    validates :name, uniqueness: true
end
