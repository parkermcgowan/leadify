#!/usr/bin/perl
use strict;
use warnings;
use diagnostics -verbose;
#use bigint;
use 5.18.2;

my $toFactor = <STDIN>;
chomp( $toFactor );

my @primeFactors;

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

sub isprime {
  my $number  = pop(@_);                  #Scalar which stores the number you are checking 
  my $count   = 2;                         #goes from 2->$number, to check if divisble my count

  return 1 if ($number == 2);

  #until ($count > sqrt($number))
  while (sqrt($number) >= $count)
    {   
      if ($number%$count != 0)
      {
        $count = $count + 1;
      }
      elsif ($number%$count == 0)
      {
        return 0;
      }
    }
    return 1;
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
