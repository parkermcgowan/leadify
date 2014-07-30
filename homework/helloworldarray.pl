#!/usr/bin/perl
use strict;
use warnings;
use 5.18.2;

my @helloWorld = ('H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', "\n" );

foreach my $character (@helloWorld)
{
    print $character;
}
