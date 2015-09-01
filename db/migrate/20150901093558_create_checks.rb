class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.integer :user_id
      t.integer :node_id
      t.string :status
      t.integer :response_time

      t.timestamps null: false
    end
  end
end
