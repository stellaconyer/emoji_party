class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.datetime :date, null: false
      t.string :event_name, null: false
      t.string :event_link
      t.string :video_link
      t.integer :talk_id
    end

    add_index :appearances, :talk_id
  end
end
