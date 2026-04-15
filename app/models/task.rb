class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project

  enum :status, {
    todo: "todo",
    in_progress: "in_progress",
    completed: "completed"
  }

  # le relazioni belongs_to garantiscono già la presenza di user e project, ma è meglio essere espliciti
  validates :user, presence: true
  validates :project, presence: true
  validates :title, presence: true, uniqueness: { scope: [ :project_id, :user_id ] }
  validates :status, presence: true, inclusion: { in: statuses.keys }
end
