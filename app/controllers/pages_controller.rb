class PagesController < ApplicationController
    def home
    end
  
    def dashboard
      @my_bookings = current_user.bookings
      
      @my_jobs = current_user.jobs
    end
  
  end