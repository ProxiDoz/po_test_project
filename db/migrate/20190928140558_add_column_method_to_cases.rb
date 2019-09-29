class AddColumnMethodToCases < ActiveRecord::Migration[6.0]
  def change
  	add_column :cases, :method, :string
  end
end
