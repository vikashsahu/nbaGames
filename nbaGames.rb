require 'net/http'
require 'open-uri'

uri = URI('http://www.nba.com/schedules/national_tv_schedule/')

abcUri = "ABC"
espn = "ESPN"

open("http://www.nba.com/schedules/national_tv_schedule/") {|f|
	f.each_line {|line| if line.include? "div id=\"nbaMainSection\"" then puts line end}
}