class LessonLanguage < ApplicationRecord
  belongs_to :lesson
  belongs_to :language
end
