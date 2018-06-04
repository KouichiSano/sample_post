class AddStoryIdToChapters < ActiveRecord::Migration[5.2]
  def change
    add_column :chapters, :story_id, :integer
  end
end
