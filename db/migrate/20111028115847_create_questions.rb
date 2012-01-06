class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.boolean :is_active, :default => true
      t.timestamps
    end
  end
end
