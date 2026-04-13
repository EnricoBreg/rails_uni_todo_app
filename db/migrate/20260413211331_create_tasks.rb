class CreateTasks < ActiveRecord::Migration[8.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :status
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.date :deadline

      t.timestamps
    end
  end
end
