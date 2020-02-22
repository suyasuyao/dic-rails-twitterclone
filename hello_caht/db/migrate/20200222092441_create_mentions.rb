class CreateMentions < ActiveRecord::Migration[5.2]
  def change
    create_table :mentions do |t|
      # mentionsテーブルはcontentカラムのみ追加(not null制約あり)
      t.string :content, null: false
      t.timestamps
    end
  end
end
