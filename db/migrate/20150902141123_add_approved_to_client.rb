class AddApprovedToClient < ActiveRecord::Migration
  def change
    add_column :clients, :approved, :boolean
  end
end
