class CompositionCharacter < ApplicationRecord
  belongs_to :composition
  belongs_to :character
end
