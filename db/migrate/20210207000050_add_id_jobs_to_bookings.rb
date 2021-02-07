class AddIdJobsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :id_users, :integer
    add_column :bookings, :id_jobs, :integer
    add_column :bookings, :id_reviews, :integer
  end
end
