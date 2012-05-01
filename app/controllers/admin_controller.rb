class AdminController < ApplicationController
  def index
    @theater = Theater.find(params[:theater_id])
    @showtimes = @theater.showtimes
    @movie_hash = Hash.new{|hash, key| hash[key] = []}
    @showtimes.each do |showtime|
      @movie_hash[showtime.movie_id.to_s] << showtime
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @showtimes }
    end
  end
end