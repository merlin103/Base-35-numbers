#!/bin/perl -w

use strict;
use feature 'say';

sub Base_35_numbers{
	my $num = shift;
	my $c = 0;
	my @d = ('0' .. '9', 'A' .. 'Y');
	my %converter = map {$c++ => $_} @d;	
	my $result;
	my $r;
	
	while ($num > 0){
		($num, $r) = (int($num / 35), $num % 35); 
		$result .= $converter{$r};	
	}
	$result = reverse $result;
	
	return $result 
}

say(Base_35_numbers("35")); # 10
say(Base_35_numbers("103")); # 2X
say(Base_35_numbers("2945")); # 2E5
