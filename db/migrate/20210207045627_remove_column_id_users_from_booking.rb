class RemoveColumnIdUsersFromBooking < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :id_users
  end
end
