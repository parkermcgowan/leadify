#!/usr/bin/perl
use strict;
use warnings;
use 5.18.2;

my $number = <STDIN>;
chomp( $number );

my $count = 2;
if ($number == 2)
{
    print "number is prime\n";
}
else
{
    while ($count < $number)
    {
        if ($number%$count != 0 and ($number - 1) == $count)
        {
            print "number is prime\n";
            $count = $number;
        }
        elsif ($number%$count != 0 and ($number - 1) > $count)
        {
            ++$count;
        }
        elsif ($number%$count == 0)
        {
            print "number is not prime\n";
            $count = $number;
        }
    }
}
