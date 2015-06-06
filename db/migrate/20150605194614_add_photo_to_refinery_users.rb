# This migration comes from refinery_authentication (originally 20120301234455)
class AddPhotoToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :photo, :string
  end
end
