class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :fullname, :string
    add_column :users, :user_type, :integer
    add_reference :users, :grade, index: true, foreign_key: true
    add_column :users, :resumen, :text
  end
end
