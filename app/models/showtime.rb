class Showtime < ActiveRecord::Base
  attr_accessible :movie_id, :seats_available, :theater_id, :time, :movie, :theater, :tickets_sold
  belongs_to :movie
  belongs_to :theater
end
