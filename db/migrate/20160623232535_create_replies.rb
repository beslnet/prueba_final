class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :message
      t.references :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
