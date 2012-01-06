class CreateUserQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :user_question_answers do |t|
      t.references :question, :null => false
      t.references :choice, :null => false
      t.boolean :is_right, :null => false
      t.timestamps
    end
    add_index :user_question_answers, :question_id
    add_index :user_question_answers, :choice_id
  end
end
