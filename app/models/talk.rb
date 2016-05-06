# t.integer :refinery_user_id, null: false
# t.string :title, null: false
# t.string :description
# t.string :slides_link

class Talk < ActiveRecord::Base
  belongs_to :refinery_user, class_name: "Refinery::User"
  has_many :appearances, dependent: :destroy
end
