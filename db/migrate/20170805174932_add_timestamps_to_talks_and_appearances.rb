class AddTimestampsToTalksAndAppearances < ActiveRecord::Migration
  def change
    change_table(:talks) { |t| t.timestamps }
    change_table(:appearances) { |t| t.timestamps }
  end
end
