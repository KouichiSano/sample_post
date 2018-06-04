class AddChapterIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :chapter_id, :integer
  end
end
