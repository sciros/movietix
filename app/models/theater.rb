class Theater < ActiveRecord::Base
  attr_accessible :name, :zip, :description, :ticket_price
  validates_presence_of :name, :zip, :description
  has_many :showtimes
  has_many :movies, :through => :showtimes
end
