#!/usr/bin/perl
use strict;
use warnings;
use 5.18.2;

my $toFactor = <STDIN>;
chomp( $toFactor );

my $startCount = 2;

my @primeFactors;

if (isprime($toFactor))
{
    print "$toFactor is prime!!!11!!1\n";
}
else
{
    primefactor($toFactor, $startCount);
}

sub isprime {
    my $number = pop(@_);
    my $count = 2;
    if ($number == 2)
    {
       return 1;
    }
    else
    {
        while ($count < $number)
        {   
            if ($number%$count != 0 and ($number - 1) == $count)
            {
                return 1;
            }
            elsif ($number%$count != 0 and ($number - 1) > $count)
            {
                ++$count;
            }
            elsif ($number%$count == 0)
            {
                return 0;
            }
        }
    }
}

sub primefactor {
    my $count = pop(@_);
    my $number = pop(@_);

    if (isprime($number))
    {
        push (@primeFactors, $number);
        print "@primeFactors are the prime factors!!!!!!!!1!!1!!!111!!!\n";
    }
    else
    {
        #    while ($count < $number)
        #{
            if ($number%$count == 0)
            {
                push (@primeFactors, $count);
                primefactor(($number/$count), ($count + 1));
            }
            else
            {
                primefactor($number, ($count + 1));
            }
            # }
    }
}
