class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false, comment: 'タイトル'
      t.text   :text,  null: false, comment: '本文'

      t.timestamps
    end
  end
end
