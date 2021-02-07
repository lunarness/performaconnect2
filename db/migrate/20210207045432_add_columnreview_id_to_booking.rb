class AddColumnreviewIdToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :review_id, :integer
  end
end
