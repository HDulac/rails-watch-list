class ChangeCommentToBookmarks < ActiveRecord::Migration[7.0]
  def change
    change_column :bookmarks, :comment, :string
  end
end
