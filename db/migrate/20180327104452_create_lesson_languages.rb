class CreateLessonLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :lesson_languages do |t|
      t.references :lesson, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
