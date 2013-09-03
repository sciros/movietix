class Purchase < ActiveRecord::Base
  attr_accessible :num_tickets, :showtime_id, :user_id
end
