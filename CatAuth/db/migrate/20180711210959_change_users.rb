class ChangeUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :password_digest, :string, null: true
    add_index :users, [:user_name, :session_token], unique: true
  end
end
