class CreateUsers < ActiveRecord::Migration
    drop_table :users
    def change
        create_table :users do |t|
            t.string :name, :null => false, :default => ""
            t.integer :user_id, :null => false, :default => 0, :limit => 8
            t.integer :uid, :limit => 8
            t.string :provider
            t.string :oauth_token
            t.datetime :oauth_expires_at
            t.timestamps
            t.text :avatar_url
        end
       add_index :users, :uid
    end

end
