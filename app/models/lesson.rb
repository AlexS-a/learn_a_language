class Lesson < ApplicationRecord
  belongs_to :owner, :class_name => :User, :foreign_key => "user_id"
  has_many :bookings
  has_many :reviews
  has_many :users, through: :bookings
  has_many :lesson_languages
  has_many :languages, through: :lesson_languages

  validates :description, presence: true
  validates :price, presence: true
  validates :difficulty, presence: true

  include PgSearch
  pg_search_scope :global_search,
    against: [ :description, :difficulty, :price ],
    using: {
      tsearch: { prefix: true }
    }
end
