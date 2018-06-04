class AddPartToChapters < ActiveRecord::Migration[5.2]
  def change
    add_column :chapters, :part, :string
    add_column :chapters, :subtitle, :string
    add_column :chapters, :parttext, :text

  end
end
