class Project < ApplicationRecord
  belongs_to :creator, class_name: "User", optional: false
  has_many :tasks, dependent: :destroy
  has_many :users, -> { distinct }, through: :tasks

  validates :creator, presence: true
  validates :title, presence: true
end
