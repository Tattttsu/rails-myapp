class RenameEndColumnToPosts < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :start, :start_day
    rename_column :posts, :end, :end_day
  end
end
