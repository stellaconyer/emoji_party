# t.datetime :date, null: false
# t.string :event_name, null: false
# t.string :event_link
# t.string :video_link
# t.integer :talk_id

class Appearance < ActiveRecord::Base
  belongs_to :talk
end
