#!/usr/bin/perl
use Modern::Perl;   #Incorportes the basic necessities of PERL   
use Data::Dumper;   #Gives us a way to access the contents of empty arrays.

# so far we've covered most of the destructive array functions (functions which damage the variable they work on), now we will deal with non-destructive functions

#this is array creation shorttype, the qw command, or quote words allows us to declare words in the array without quoting and using commas
my @favoriteThings  = qw(orphan beating tastiness delviering griefing piracy Free musicals pictures);
say Dumper \@favoriteThings;


for(my $i=0; $i < @favoriteThings; $i++){
say $favoriteThings[$i];
}

foreach my $entry (@favoriteThings){
    say $entry;
}


#This is for knowing, but NOT using
#       $_ and @_ are pronouns.
#       $_ implicit scalar pronoun, the last thing you operated on.
#       @_ implicit array  pronoun, the last list you operated on.
#   Pronoun useage can make language convoluated, much like in english.


foreach (@favoriteThings){          #steps over a list
    say $_;                         #The code is implicity saying, this is the thing we are accessing
}

for (@favoriteThings){              #for is an alias for foreach, a shorthand way of calling another function
    say $_;
}

for (@favoriteThings){              
    say;                            # while steppign the array, the foreach, many functions will accept $_ if you don't put anything in it.
}


#---------------------
#chop-Removes and returns the last letter of  a word, DESTRUCTIVE
#Chomp-removes whitespace from the end and a new end
foreach my $entry (@favoriteThings){
    say $entry;
    say chop $entry;
    say $entry;
}

#This will put you into an infinite loop as the while will not ever find an end of array as items are not being removed from the array
#while (@favoriteThings) {
#    say $_;
#}


#While does not create an iterator, but for does. This is the difference between the two.      Until is the opposite of not, in that it performs until a true boolean is recieved.
my @WhileFavThings  =       @favoriteThings;
while (@WhileFavThings)  {
    say shift @WhileFavThings
}


#Take note that chop has edited the original array and has not created a copy.
#list of names and length of names
foreach my $entry (@favoriteThings){
   say  sprintf("%s:%d", $entry, length($entry));
}

my @newFavoriteThings  = qw(orphan beating tastiness delviering griefing piracy Free musicals pictures awesome win counterwin losing);

#Goal: create a new array where each object only has a length greater than five
my @fiveLetterWords;
foreach my $entry (@newFavoriteThings){
    if( length($entry) > 4){
        push @fiveLetterWords, $entry;
    }
}
say Dumper @fiveLetterWords;


#Goal: create a new array where each object only has a length greater than five and less than 8
my @fiveToEight;
foreach my $entry (@newFavoriteThings){
    if( length($entry) > 4 && length($entry) <8){
        push @fiveToEight, $entry;
    }
}
say Dumper @fiveToEight;


#Map and GREp are the lsat two non-destructive operators
# Advanced operators, but are extremely useful
#GREP is built in and takes two things, a block to call and a list. It retursn a list.
#   The block it calls is much like the blcok in the sort block, in that if it returns true it returns the object

#Goal: create a new array where each object only has a length greater than five and less than 8
my @grepExample     =   grep    {   length($_) > 4  and  length($_) < 8}       @newFavoriteThings;
say Dumper @grepExample;

#We used $_ because grep implicity sets the pronoun for each item, so it is necessary in this case. There is no other way to get the items.


#Map
# Accepts the same arguments as Grep, a Block and a list, and it returns a list
#   Instead of returning the object as Grep if it's true or false, Map returns the value of the block
#

my @lengthList      =   map     {   length $_ }         @newFavoriteThings;
say Dumper @lengthList;

#return array of name all uppercase and the number of letters in each word


my @compoundList    =   map     {   length $_, uc $_ }   @newFavoriteThings;
say Dumper @compoundList;

#These tools are great shortcuts but for times when we preform numerous opertaions on our list we should remember code readability comes first and not use grep/map



