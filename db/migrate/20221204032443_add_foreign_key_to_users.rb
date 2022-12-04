class AddForeignKeyToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :role, null: true, foreign_key: true, index: true
  end
end
