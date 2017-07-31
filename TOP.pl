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

my $yearstart = 2000;
my $yearend = 2017;
my $monthstart = 1;
my $monthend = 12;



#system "perl GetStockNumber.pl";

################################ 
###### daily : skill
################################ 
system "perl History_tse.pl $yearstart $yearend $monthstart $monthend"; 

################################ 
##### daily : acredit foreign netbuy zhuli
################################ 
system "perl HistoryBasic_2.pl $yearstart $yearend $monthstart $monthend"; 

################################ 
##### month : asale
################################ 
system "perl HistoryBasic_3.pl $yearstart $yearend"; 

################################ 
##### year : dividend finicial 
##### season : balance income
################################ 
system "perl HistoryBasic.pl";

#system "perl Hash.pl";





print "\n ~~~~ TOP => All works have been done! ~~~~ \n\n";


#chomp($input=<STDIN>);
