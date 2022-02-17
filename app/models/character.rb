class Character < ApplicationRecord
  belongs_to :element
  belongs_to :weapon

  has_many :composition_characters
  has_many :characters, through: :composition_characters
  has_one_attached :image
end
