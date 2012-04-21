#!/usr/bin/env perl6

use v6;


say [q|# INPUT

my %hs = {"one" => 1, "two" => 2 };

for (%hs.kv) -> $k, $v {
    say "$k => $v";
}

# OUTPUT
|];


my %hs = {"one" => 1, "two" => 2 };

for (%hs.kv) -> $k, $v {
    say "$k => $v";
}
