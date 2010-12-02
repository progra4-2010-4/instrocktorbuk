class CreateOmnisocialTables < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :remember_token
      # Any additional fields here
      add_column :users, :avatar_file_name,    :string
      add_column :users, :avatar_content_type, :string
      add_column :users, :avatar_file_size,    :integer
      add_column :users, :avatar_updated_at,   :datetime
      #
      t.timestamps
    end
    
    create_table :login_accounts do |t|
      t.string :type
      t.string :user_id
      t.string :remote_account_id
      t.string :name
      t.string :login
      t.string :picture_url
      # Any additional fields here 
      remove_column :users, :avatar_file_name
      remove_column :users, :avatar_content_type
      remove_column :users, :avatar_file_size
      remove_column :users, :avatar_updated_at

      #
      t.timestamps
    end
    
    add_index :login_accounts, :user_id
    add_index :login_accounts, :type
  end

  def self.down
    remove_index :login_accounts, :type
    remove_index :login_accounts, :user_id
    drop_table :login_accounts
    drop_table :users
  end
end
