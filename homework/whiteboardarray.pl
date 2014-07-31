#!/usr/bin/perl
use strict;
use warnings;
use 5.18.2;

my @whiteBoardFeelings = ("Thankful", "Gracious", "Indifferent", "Disturbed");
print "@whiteBoardFeelings\n";
push @whiteBoardFeelings, "Disgruntled";
print "@whiteBoardFeelings\n";
pop @whiteBoardFeelings;
print "@whiteBoardFeelings\n";
unshift @whiteBoardFeelings, "Disgruntled";
print "@whiteBoardFeelings\n";

@whiteBoardFeelings = sort @whiteBoardFeelings;
print "@whiteBoardFeelings\n";
