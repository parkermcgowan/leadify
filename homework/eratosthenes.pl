#!/usr/bin/perl
use strict;
use warnings;
use 5.18.2;

my $numberInput = <STDIN>;
chomp( $numberInput );

my @numbers = (2..$numberInput);

foreach my $sieve (@numbers)
{
  @numbers = grep { $_%$sieve != 0 or $_ == $sieve } @numbers;
}

print "@numbers\n";
