class CreateBlogPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :description
      t.text :summary
      t.text :content
      t.boolean :status

      t.timestamps
    end
  end
end
