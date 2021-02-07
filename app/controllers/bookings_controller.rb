class BookingsController < ApplicationController
    before_action :find_booking, only: [:show]
    def create
      @booking = Booking.new(booking_params)
      @booking.job_id = params[:job_id]
      @booking.user = current_user
      @booking.save
      redirect_to booking_path(@booking.job)
    end

    def index
      @bookings = Booking.all
    end
  
    def show
    end
  
    private
  
    def booking_params
      params.require(:booking).permit(:note)
    end
  
    def find_booking
      @booking = Booking.find(params[:id])
    end
  end