class AddAvatarUrlImageToUsers < ActiveRecord::Migration
  def change
      add_column :users, :avatar_url, :url
  end
end
