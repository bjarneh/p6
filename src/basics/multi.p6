#!/usr/bin/env perl6

use v6;

# overload a function
multi fun(Str $a){ say "Str : $a"; }
multi fun(Int $a){ say "Int : $a"; }
multi fun(Rat $a){ say "Rat : $a"; }

sub MAIN( Any $arg ) {
    fun($arg);
};
