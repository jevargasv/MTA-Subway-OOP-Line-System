class MTA
    def initialize ()
        @lines = {}
    end
    def add_line (line)
        name = line.name.to_sym
        stops = line.stops
        @lines[name] = stops
    end
    def view ()
        @lines.each do |x|
            puts x.name
    end
    def return_lines
        puts @lines.keys
    end

    def return_stops(line)
        puts @lines[line.to_sym]
    end

    def calculate (starting_line, next_stop, ending_line, last_stop)
        starting_line = starting_line.to_sym
        ending_line = ending_line.to_sym

        if starting_line == ending_line
        (@lines[starting_line].index(next_stop) - @lines[ending_line].index(last_stop)).abs
        elsif
        starting_from_herald_square = @lines[starting_line].index(next_stop) - @lines[starting_line].index("herald_square")
        ending_from_herald_square = @lines[ending_line].index(last_stop) - @lines[ending_line].index("herald_square")
        puts starting_from_herald_square.abs + ending_from_herald_square.abs
        else
        starting_from_union_square = @lines[starting_line].index(next_stop) - @lines[starting_line].index("union_square")
        ending_from_union_square = @lines[ending_line].index(last_stop) - @lines[ending_line].index("union_square")
        puts starting_from_union_square.abs + ending_from_union_square.abs
    end
end

class Line
    attr_accessor :name :stops
    def initialize (name, stops)
        @name = name
        @stops = stops
    end
end
