#!/usr/bin/env perl6

use v6;

sub MAIN( Str $filename ) {
    my $fh = open $filename;
    for $fh.lines -> $line {
        say "line: $line.chomp()";
    }
    $fh.close();
};
