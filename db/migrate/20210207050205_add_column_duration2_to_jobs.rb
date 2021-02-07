class AddColumnDuration2ToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :duration, :integer
  end
end
