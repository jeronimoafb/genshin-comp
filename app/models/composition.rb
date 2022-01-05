class Composition < ApplicationRecord
  belongs_to :user

  has_many :composition_characters
  has_many :characters, through: :composition_characters
end
