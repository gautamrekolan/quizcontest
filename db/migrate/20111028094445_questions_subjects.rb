class QuestionsSubjects < ActiveRecord::Migration
  def up
    create_table :questions_subjects, :id => false do |t|
        t.references :question
        t.references :subject
    end
    add_index :questions_subjects, [:question_id, :subject_id]
    add_index :questions_subjects, [:subject_id, :question_id]
  end

  def down
    drop_table :questions_subjects
  end
end
