class CreateCompositionCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :composition_characters do |t|
      t.references :composition, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
