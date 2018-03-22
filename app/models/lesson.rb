class Lesson < ApplicationRecord
  belongs_to :owner, :class_name => :User, :foreign_key => "user_id"
  has_many :bookings
  has_many :reviews
  has_many :users, through: :bookings

  validates :description, presence: true
  validates :price, presence: true
  validates :difficulty, presence: true
end
