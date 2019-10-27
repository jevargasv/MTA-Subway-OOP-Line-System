# Line System
require_relative './structure.rb'

line_N = Line.new("N") = ["times_square", "34th", "28th", "23rd", "union_square", "8th"]
line_L = Line.new("L") = ["8th", "6th", "union_square", "3rd", "1st"]
line_6 = Line.new("6") = ["grand_central", "33rd", "28th", "23rd", "union_square", "astor_place"]
line_F = Line.new("F") = ["rockefeller_center", "42nd", "herald_square", "23rd", "14st", "west_4th"]
line_Q = Line.new("Q") = ["times_square", "herald_square", "union_square", "canal_st"]

mta = MTA.new()
mta.add_line(line_N)
mta.add_line(line_L)
mta.add_line(line_6)
mta.add_line(line_F)
mta.add_line(line_Q)

puts Rainbow("Welcome to the MTA subway system.").red
input = ARGV

if ARGV[0] == "lines"
    mta.return_lines
end

if ARGV[0] == "stops"
    if !ARGV[1].nil?
    line = ARGV[1].upcase
    mta.return_stops(line)
    else
        puts "Please enter a line."
    end
end

if ARGV[0] == "calculate"
    startline = ARGV[1]
    startstop = ARGV[2]
    endline = ARGV[3]
    endstop = ARGV[4]
    mta.calculate(starting_line, next_stop, ending_line, last_stop)
end
