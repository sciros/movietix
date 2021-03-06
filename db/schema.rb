# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120501051103) do

  create_table "movies", :force => true do |t|
    t.string  "name"
    t.integer "running_time"
    t.integer "rating"
    t.text    "description"
  end

  create_table "purchases", :force => true do |t|
    t.integer  "user_id"
    t.integer  "showtime_id"
    t.integer  "num_tickets"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "showtimes", :force => true do |t|
    t.integer "movie_id"
    t.integer "theater_id"
    t.string  "time"
    t.integer "seats_available"
    t.integer "tickets_sold"
  end

  create_table "theaters", :force => true do |t|
    t.string  "name"
    t.integer "zip"
    t.text    "description"
    t.decimal "ticket_price"
  end

  create_table "users", :force => true do |t|
    t.string   "login",           :null => false
    t.string   "password_digest", :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
