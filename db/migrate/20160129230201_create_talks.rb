class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.integer :refinery_user_id, null: false
      t.string :title, null: false
      t.string :description
      t.string :slides_link
    end

    add_index :talks, :refinery_user_id
  end
end
