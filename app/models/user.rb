class User < ApplicationRecord
  has_many :projects, class_name: "Project", foreign_key: "creator_id"
  has_many :tasks, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
