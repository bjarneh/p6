#!/usr/bin/env perl6

use v6;


say [q| #INPUT

sub lastWeekdayEachMonth(Str $weekday, Int $year = Date.today.year) {

    my %days = {mon => 1,tue => 2,wed => 3,thu => 4,fri => 5,sat => 6,sun => 7};

    my @fri;
    for Date.new("$year-01-01") .. Date.new("$year-12-31") {
        @fri[.month] = .Str if .day-of-week == %days{$weekday};
    }
    .say for "$weekday " «~« @fri[1..12];
}

lastWeekdayEachMonth('mon', 1994);

# OUTPUT
|];

# loop through a year and look for the last weekday of type
sub lastWeekdayEachMonth(Str $weekday, Int $year = Date.today.year) {

    my %days = {mon => 1,tue => 2,wed => 3,thu => 4,fri => 5,sat => 6,sun => 7};

    my @fri;
    for Date.new("$year-01-01") .. Date.new("$year-12-31") {
        @fri[.month] = .Str if .day-of-week == %days{$weekday};
    }
    .say for "$weekday " «~« @fri[1..12];
}

lastWeekdayEachMonth('mon', 1994);

