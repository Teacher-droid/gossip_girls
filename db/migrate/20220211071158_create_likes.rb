class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|

      
      t.references :user,null:false,foreign_key:true 
      t.references :gossip,null: false,foreign_key:true 
      t.boolean :like,value: false
      
    end

    add_index :likes, [:user_id,:gossip_id],unique: true 

  end
end
