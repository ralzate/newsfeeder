class AddTitleToStories < ActiveRecord::Migration
  def change
      add_column :stories, :title, :string
      add_column :stories, :body, :text
  end
end
