#!/usr/bin/env perl6

use v6;


say [q|# INPUT

my @gen = 1,2,3 ... 10;
@gen.say;

# OUTPUT
|];

my @gen = 1,2,3 ... 10;
@gen.say;

say [q|
# INPUT
#
my @fib = 1,1,  * + *  ... 34;
@fib.say;

# OUTPUT
|];


my @fib = 1,1,  * + *  ... 34;
@fib.say;

