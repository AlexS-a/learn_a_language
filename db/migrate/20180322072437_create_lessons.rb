class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.text :description
      t.string :difficulty
      t.integer :price
      t.boolean :online, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
