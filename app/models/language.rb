class Language < ApplicationRecord
  belongs_to :user
  has_many :lesson_languages
  has_many :lessons, through: :lesson_languages

  validates :name, presence: true
  validates :level, presence: true
end
