class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.text :link

      t.timestamps null: false
    end
  end
end
