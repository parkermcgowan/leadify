#!/usr/bin/perl
use strict;
use warnings;
use 5.0100;
use Data::Dumper;  #Gives us a way to access the contents of empty arrays.
=CUT <-- meant for inline documentation in perl
# A Hash and an arrary are both in list context
#Context:
#       Very important to perl.
    Scalar context
    List context
    boolean context (not yet covered)- is somethign true or false
        -trips up a lot of people
            - The general assumption is that if something is not defined it is false,
                however, the following values are false, but defined:
                        -0
                        -"" (empty string)
                        -undef (defined undefined, explicit undefined, you've intiliazed the variable but not set a value)
                        -0.0
                    -You could have a number that has a string value, there is a special value called 0, but true.
                        -has a numeric value of 0, but no matter what context you put it in, it's true.
                    -Defined is a function you can call to see if something has a value
    void context-
        -When you're not expecting a context to return anything, when you're calling a function, but not returning anything then the function is being called in a void context
        
        
=cut

my @favoriteThings = qw(orphan beating tastiness delivering griefing piracy Free musicals pictures);
my $lengthOfThings = @favoriteThings;
for(my $i=0; $i < $lengthOfThings; $i++){
pop @favoriteThings;
}

say @favoriteThings;

if(@favoriteThings){
    say 'true';
}
else{
    say 'false'
}

                        
            