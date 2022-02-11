class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, index: true
      t.boolean :like,value: false
      t.integer :likecount

      t.timestamps
    end
  end
end
