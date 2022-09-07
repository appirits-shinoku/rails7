class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false, comment: 'タイトル'
      t.text   :text,  null: false, comment: '本文'
      t.boolean :comment_flg, bull: false, comment: 'コメント有効フラグ'

      t.timestamps
    end
  end
end
