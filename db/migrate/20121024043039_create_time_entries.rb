class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.integer :project_id
      t.integer :user_id
      t.string :entryCode
      t.decimal :entryTime

      t.timestamps
    end
  end
end
