#!/usr/bin/perl
use strict;
use warnings;
use diagnostics -verbose;
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
  my $number  = pop(@_);                  #Scalar which stores the number you are checking 
  my $count   = 2;                         #goes from 2->$number, to check if divisble my count

  return 1 if ($number == 2);


  while ($count < $number)
    {   
      if ($number%$count != 0 and ($number - 1) == $count)
      {
        return 1;
      }
      elsif ($number%$count != 0 and ($number - 1) > $count)
      {
        $count = $count + 1;
      }
      elsif ($number%$count == 0)
      {
        return 0;
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
