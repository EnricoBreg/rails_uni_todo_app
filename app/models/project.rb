class Project < ApplicationRecord
  belongs_to :creator, class_name: "User", optional: false
  has_many :tasks, dependent: :destroy
end
