class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.integer :user_id
      t.integer :client_id
      t.string :name
      t.string :address
      t.text :description

      t.timestamps null: false
    end
  end
end
