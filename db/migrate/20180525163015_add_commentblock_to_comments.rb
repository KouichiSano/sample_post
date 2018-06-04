class AddCommentblockToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :commentblock, :string
  end
end
