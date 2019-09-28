class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :midle_name
      t.string :last_name
      t.boolean :sex
      t.string :full_name, null: false

      t.timestamps
    end
  end
end
