class CreateClientSettings < ActiveRecord::Migration
  def change
    create_table :client_settings do |t|
      t.integer :client_id
      t.integer :check_interval

      t.timestamps null: false
    end
  end
end
