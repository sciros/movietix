class Movie < ActiveRecord::Base
  attr_accessible :name, :rating, :running_time
  validates_presence_of :name, :rating, :running_time
  has_many :showtimes
  has_many :theaters, :through => :showtimes
end
