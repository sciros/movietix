# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name => 'Chicago' }, { name => 'Copenhagen' }])
#   Mayor.create(name => 'Emanuel', city => cities.first)

admin = User.create(:login => "admin", :password => "P4ssw0rd", :password_confirmation => "P4ssw0rd")

revengers_synopsis = "When a malicious entity with dubious motivations threatens Earth with epic CG explosions, \
an unlikely band of heroes teams up to shatter previous box-office records."

revengers = Movie.create(:name => "The Revengers", :running_time => 135, :rating => 2, :description => revengers_synopsis)
arachnidman = Movie.create(:name => "Arachnidman", :running_time => 110, :rating => 3)
two_d_array = Movie.create(:name => "The 2D Array", :running_time => 120, :rating => 2)
hungry_games = Movie.create(:name => "The Hungry Games", :running_time => 90, :rating => 1)
game_of_chairs = Movie.create(:name => "Game of Chairs", :running_time => 115, :rating => 4)

abc_24 = Theater.create(:name => "ABC IMAX 24", :zip => 43210, :description => "has imax")
rage_18 = Theater.create(:name => "Rage Motion Pictures 18", :zip => 43240, :description => "rubbish seats")
abc_30 = Theater.create(:name => "ABC IMAX 30", :zip => 43219, :description => "sells booze at concessions")
studio_36 = Theater.create(:name => "Studio 36", :zip => 43209, :description => "for hipsters")

s1 = Showtime.create(:movie => revengers, :theater => abc_24, :time => '6:00', :seats_available => 300)
s2 = Showtime.create(:movie => revengers, :theater => abc_24, :time => '9:00', :seats_available => 300)
s3 = Showtime.create(:movie => arachnidman, :theater => abc_24, :time => '4:00', :seats_available => 300)
s4 = Showtime.create(:movie => arachnidman, :theater => abc_24, :time => '6:30', :seats_available => 0)
s5 = Showtime.create(:movie => arachnidman, :theater => abc_24, :time => '9:00', :seats_available => 2)
s6  = Showtime.create(:movie => two_d_array, :theater => abc_24, :time => '6:00', :seats_available => 1)
s7  = Showtime.create(:movie => two_d_array, :theater => abc_24, :time => '8:30', :seats_available => 300)
s8  = Showtime.create(:movie => hungry_games, :theater => abc_24, :time => '5:30', :seats_available => 0)
s9  = Showtime.create(:movie => hungry_games, :theater => abc_24, :time => '7:30', :seats_available => 0)
s10  = Showtime.create(:movie => game_of_chairs, :theater => abc_24, :time => '9:00', :seats_available => 300)
s11  = Showtime.create(:movie => revengers, :theater => rage_18, :time => '6:00', :seats_available => 300)
s12  = Showtime.create(:movie => revengers, :theater => rage_18, :time => '8:30', :seats_available => 300)
s13  = Showtime.create(:movie => revengers, :theater => rage_18, :time => '11:00', :seats_available => 300)
s14  = Showtime.create(:movie => arachnidman, :theater => rage_18, :time => '5:00', :seats_available => 300)
s15  = Showtime.create(:movie => arachnidman, :theater => rage_18, :time => '8:00', :seats_available => 0)
s16  = Showtime.create(:movie => two_d_array, :theater => rage_18, :time => '5:00', :seats_available => 300)
s17  = Showtime.create(:movie => two_d_array, :theater => rage_18, :time => '7:30', :seats_available => 300)
s18  = Showtime.create(:movie => two_d_array, :theater => rage_18, :time => '10:00', :seats_available => 300)
s19  = Showtime.create(:movie => hungry_games, :theater => rage_18, :time => '4:30', :seats_available => 0)
s20  = Showtime.create(:movie => hungry_games, :theater => rage_18, :time => '6:30', :seats_available => 5)
s21  = Showtime.create(:movie => hungry_games, :theater => rage_18, :time => '8:30', :seats_available => 300)
s22  = Showtime.create(:movie => revengers, :theater => abc_30, :time => '6:15', :seats_available => 300)
s23  = Showtime.create(:movie => revengers, :theater => abc_30, :time => '9:00', :seats_available => 300)
s24  = Showtime.create(:movie => arachnidman, :theater => abc_30, :time => '5:30', :seats_available => 300)
s25  = Showtime.create(:movie => arachnidman, :theater => abc_30, :time => '8:00', :seats_available => 300)
s26  = Showtime.create(:movie => arachnidman, :theater => abc_30, :time => '10:30', :seats_available => 0)
s27  = Showtime.create(:movie => two_d_array, :theater => abc_30, :time => '7:00', :seats_available => 300)
s28  = Showtime.create(:movie => two_d_array, :theater => abc_30, :time => '10:00', :seats_available => 300)
s29  = Showtime.create(:movie => hungry_games, :theater => abc_30, :time => '5:00', :seats_available => 0)
s30  = Showtime.create(:movie => hungry_games, :theater => abc_30, :time => '7:00', :seats_available => 300)
s31  = Showtime.create(:movie => hungry_games, :theater => abc_30, :time => '9:00', :seats_available => 0)
s32  = Showtime.create(:movie => two_d_array, :theater => studio_36, :time => '6:45', :seats_available => 300)
s33  = Showtime.create(:movie => game_of_chairs, :theater => studio_36, :time => '6:00', :seats_available => 300)
s34  = Showtime.create(:movie => game_of_chairs, :theater => studio_36, :time => '9:00', :seats_available => 300)

