class AddColumnjobIdToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :job_id, :integer
  end
end
