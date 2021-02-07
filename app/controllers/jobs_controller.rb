class JobsController < ApplicationController
    before_action :find_job, only: [:edit, :show, :update, :destroy]
  
    def new
      @job = Job.new
    end
  
    def create
      @job = Job.new(job_params)
      @job.user = current_user
      @job.save
      redirect_to job_path(@job)
    end
  
    def edit
    end
  
    def index
      @jobs = Job.all
    end
  
    def show
      @bookings = @job.bookings
      @booking = Booking.new
    end
  
    def destroy
      @job.destroy
      # redirect_to
    end
  
    def update
      @job.update(params[:job])
    end
  
    private
  
    def job_params
      params.require(:job).permit(:payment, :location, :date, :time, :duration, :description)
    end
  
    def find_job
      @job = Job.find(params[:id])
      
      def find_bookings
    
      end
    end
  end