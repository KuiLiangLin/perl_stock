#!usr/bin/perl
use warnings; use strict;
use LWP::Simple;

#system "perl name.pl yearstart yearend monthstart monthend";


#system "perl GetStockNumber.pl";
system "perl History_tse.pl 2017 2017 2 2";
system "perl HistoryBasic.pl";
system "perl HistoryBasic_2.pl 2017 2017 2 2";
system "perl HistoryBasic_3.pl 2017 2017";
#system "perl Hash.pl";





print "\n ~~~~ TOP => All works have been done! ~~~~ \n\n";


#chomp($input=<STDIN>);
