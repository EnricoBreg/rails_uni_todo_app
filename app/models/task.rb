class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project

  enum :status, {
    todo: "todo",
    in_progress: "In Corso",
    completed: "Completato"
  }
end
