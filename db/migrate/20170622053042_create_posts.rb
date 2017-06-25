class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title   # 제목
      t.text :content   # 내용
      t.string :name  # 작성자
      t.timestamps null: false
    end
  end
end
