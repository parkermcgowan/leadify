#!/usr/bin/perl
use strict;
use warnings;
use 5.18.2;

my %dict = (
    0  => "F",
    60 => "D",
    70 => "C",
    80 => "B",
    90 => "A");

my $number = <STDIN>;
chomp( $number );

if ($number <= 100 and $number >= 0){

    foreach my $floor (sort {$b <=> $a} keys %dict){
        if ($number >= $floor){
            print "$dict{$floor}\n";
            exit;
        }
        
    };
}
else{
    print "$number\n";
}
