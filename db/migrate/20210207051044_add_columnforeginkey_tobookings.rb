class AddColumnforeginkeyTobookings < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :bookings, :jobs
    add_foreign_key :bookings, :users
  end
end
