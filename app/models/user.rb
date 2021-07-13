class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :masqueradable, :confirmable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable

  has_one_attached :avatar
  has_person_name

  def to_s 
    email
  end
  has_many :courses
  has_many :notifications, as: :recipient
  has_many :services
end
