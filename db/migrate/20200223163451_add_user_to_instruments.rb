class AddUserToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :user_id, :integer
  end
end
