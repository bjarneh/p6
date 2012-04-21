#!/usr/bin/env perl6

use v6;


say [q|# INPUT

my @lst = ('en', 'to', 'tre');
@lst.say;

# OUTPUT
|];

my @lst = ('en', 'to', 'tre');
@lst.say;



say [q|
# INPUT

for 0..@lst.elems-1 -> $i {
    @lst[$i].say;
}

# OUTPUT
|];

for 0..@lst.elems-1 -> $i {
    @lst[$i].say;
}


say [q|
# INPUT

for @lst -> $l {
    say $l;
}

# OUTPUT
|];


for @lst -> $l {
    say $l;
}


say [q|
# INPUT

.say for @lst;


# OUTPUT
|];

.say for @lst;
