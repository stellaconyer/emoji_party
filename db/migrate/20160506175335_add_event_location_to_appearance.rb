class AddEventLocationToAppearance < ActiveRecord::Migration
  def change
    add_column :appearances, :event_location, :string
  end
end
