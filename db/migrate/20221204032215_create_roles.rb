class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.boolean :read
      t.boolean :edit

      t.timestamps
    end
  end
end
