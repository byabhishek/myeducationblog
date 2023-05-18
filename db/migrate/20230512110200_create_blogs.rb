class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :sub_title
      t.text :blog_body
      t.string :avatar
      t.string :subject
      t.string :user_id

      t.timestamps
    end
  end
end
