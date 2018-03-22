class Language < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :level, presence: true
end
