class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :question, :null => false
      t.string :choice, :null => false
      t.boolean :is_right_choice, :default => false
      t.timestamps
    end
  end
end
