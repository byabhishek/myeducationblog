class ChangeColumnOfAvatar < ActiveRecord::Migration[7.0]
  def change
    change_column :blogs, :avatar, :binary 
    rename_column :blogs, :avatar, :photo 

  end
end
