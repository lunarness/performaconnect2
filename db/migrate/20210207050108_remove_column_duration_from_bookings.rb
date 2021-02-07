class RemoveColumnDurationFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :duration, :integer
  end
end
