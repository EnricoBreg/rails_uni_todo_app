class User < ApplicationRecord
  has_many :projects
  has_many :tasks, dependent: :destroy
end
