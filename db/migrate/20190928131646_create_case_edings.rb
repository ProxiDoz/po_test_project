class CreateCaseEdings < ActiveRecord::Migration[6.0]
  def change
    create_table :case_edings do |t|
      t.string :value
      t.boolean :sex, null: false
      t.integer :case_id

      t.timestamps
    end
  end
end
