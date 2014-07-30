#!/usr/bin/perl
use strict;
use warnings;
use 5.18.2;

my $number = <STDIN>;
chomp( $number );

my %dict = (
    0..59 => "F",
    60..69 => "D",
    70..79 => "C",
    80..89 => "B",
    90..100 => "A");

print "$dict{$number}";

=for comment
if ($number >= 0 and $number <= 100){
    if ($number <= 100 and $number > 93){
        print "A\n";
    }
    elsif ($number <= 93 and $number >= 91){
        print "G\n";
    }
    elsif ($number < 91 and $number > 84){
        print "B\n";
    }
    elsif ($number <= 84 and $number > 76){
        print "C\n";
    }
    elsif ($number <= 76 and $number > 68){
        print "D\n";
    }
    else {
        print "F\n";
    }
}
else {
    print "The grade is not between 0 and 100.\n";
}
=cut
