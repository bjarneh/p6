#!/usr/bin/env perl6

use v6;


say [q|# INPUT
my $ob = "Str";

.say for $ob.^methods();

# OUTPUT
|];

my $ob = "Str";
.say for $ob.^methods();
