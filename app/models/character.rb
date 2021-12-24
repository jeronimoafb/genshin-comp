class Character < ApplicationRecord
  belongs_to :element
  belongs_to :weapon
end
