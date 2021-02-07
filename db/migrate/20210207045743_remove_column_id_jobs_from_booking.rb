class RemoveColumnIdJobsFromBooking < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :id_jobs
    remove_column :bookings, :id_reviews
  end
end
