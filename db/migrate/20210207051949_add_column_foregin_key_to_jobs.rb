class AddColumnForeginKeyToJobs < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :jobs, :users
  end
end
