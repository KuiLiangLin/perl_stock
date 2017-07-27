#!usr/bin/perl
use warnings; use strict;
use LWP::Simple;

=header
system "perl name.pl yearstart yearend monthstart monthend";
daily : acredit foreign netbuy skill zhuli
month : asale
season : balance income
year : dividend finicial
=cut


#system "perl GetStockNumber.pl";

################################ 
###### daily : skill
################################ 
system "perl History_tse.pl 2016 2016 2 2"; 

################################ 
##### year : dividend finicial 
##### season : balance income
################################ 
system "perl HistoryBasic.pl";

################################ 
##### daily : acredit foreign netbuy zhuli
################################ 
system "perl HistoryBasic_2.pl 2016 2016 2 2"; 

################################ 
##### month : asale
################################ 
system "perl HistoryBasic_3.pl 2016 2016"; 


#system "perl Hash.pl";





print "\n ~~~~ TOP => All works have been done! ~~~~ \n\n";


#chomp($input=<STDIN>);
