class RemoveOldTable < ActiveRecord::Migration[6.0]
  def change
  	drop_table :case_edings
  end
end
