#!/usr/bin/env perl6

use v6;

say [q|
# first example always
say "hallo world";
|];

# first example always
say "hallo world";

say [q|
# create a list
my @lst = ('en', 'to', 'tre');
@lst.say;
|];

# create a list
my @lst = ('en', 'to', 'tre');
@lst.say;


say [q|
# loop over range [0, @lst.elems )
for 0..@lst.elems-1 -> $i {
    @lst[$i].say;
}
|];

# loop over range [0, @lst.elems )
for 0..@lst.elems-1 -> $i {
    @lst[$i].say;
}


say [q|
# typical loop over list
for @lst -> $l {
    say $l;
}
|];


# typical loop over list
for @lst -> $l {
    say $l;
}


say [q|
# create a hash and loop through key value pairs

my %hs = {"one" => 1, "two" => 2 };

for (%hs.kv) -> $k, $v {
    say "$k => $v";
}
|];


# create a hash and loop through key value pairs
my %hs = {"one" => 1, "two" => 2 };

for (%hs.kv) -> $k, $v {
    say "$k => $v";
}


say [q|
# use perl to generate a list (1,2,3...)

my @gen = 1,2,3 ... 10;
@gen.say;
|];

# use perl to generate a list (1,2,3...)
my @gen = 1,2,3 ... 10;
@gen.say;

say [q|
# loop through a year and look for weekdays
sub lastWeekdayEachMonth(Str $weekday, Int $year = Date.today.year) {

    my %days = {mon => 1,tue => 2,wed => 3,thu => 4,fri => 5,sat => 6,sun => 7};

    my @fri;
    for Date.new("$year-01-01") .. Date.new("$year-12-31") {
        @fri[.month] = .Str if .day-of-week == %days{$weekday};
    }
    .say for "$weekday " «~« @fri[1..12];
}

lastWeekdayEachMonth('mon', 1994);
|];

# loop through a year and look for weekdays
sub lastWeekdayEachMonth(Str $weekday, Int $year = Date.today.year) {

    my %days = {mon => 1,tue => 2,wed => 3,thu => 4,fri => 5,sat => 6,sun => 7};

    my @fri;
    for Date.new("$year-01-01") .. Date.new("$year-12-31") {
        @fri[.month] = .Str if .day-of-week == %days{$weekday};
    }
    .say for "$weekday " «~« @fri[1..12];
}

lastWeekdayEachMonth('mon', 1994);


say [q|
# introspection similar to dir(some_object) in Python

my $ob = "Str";

.say for $ob.^methods();
|];

# introspection similar to dir(some_object) in Python

my $ob = "Str";
.say for $ob.^methods();
