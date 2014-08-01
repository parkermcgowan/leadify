#!/usr/bin/perl
use strict;
use warnings;
use bigint;
use List::Util 'first';
use 5.18.2;

my $toFactor = <STDIN>;
chomp( $toFactor );

my @primeFactors;

my @primes;

eratosthenes($toFactor);

if (isprime($toFactor))
{
    print "$toFactor is prime!!!11!!1\n";
    if (ispalindrome($toFactor))
    {
      print "This one is for Greg!\n";
    }
}
else
{
    primefactor($toFactor, 2);
}

sub ispalindrome 
{
  my $number = pop(@_);

  return 1 if ($number eq (scalar reverse $number));

  return 0;
}

sub eratosthenes { #not functional
  my $number = pop(@_);
  @primes = (2..$number);
  foreach my $sieve (@primes)
  {
    @primes = grep { $_%$sieve != 0 or $_ == $sieve } @primes;
  }
}

sub isprime {
  my $number = pop(@_);
  return 1 if (first { $_ == $number } @primes);
  return 0;
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
        if ($number%$count == 0)
        {
            push (@primeFactors, $count);
            primefactor(($number/$count), $count);
        }
        else
        {
            primefactor($number, ($count + 1));
        }
    }
}
