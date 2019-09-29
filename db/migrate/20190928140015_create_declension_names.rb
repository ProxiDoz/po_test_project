class CreateDeclensionNames < ActiveRecord::Migration[6.0]
  def change
    create_table :declension_names do |t|
      t.string :full_name
      t.integer :case_id
      t.integer :person_id

      t.timestamps
    end
  end
end
