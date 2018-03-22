class User < ApplicationRecord
  has_many :languages
  has_many :bookings
  has_many :lessons, through: :bookings
  has_many :my_lessons, foreign_key: "user_id", class_name: "Lesson", dependent: :destroy
  has_many :reviews

  validates :full_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
