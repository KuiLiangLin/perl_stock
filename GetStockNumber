#!usr/bin/perl
use warnings; use strict;
use LWP::Simple;

################################
my $stockNO;
my $stockNO_tmp;
my $url;
my $year;
my $month;
my $yearmonth;
my ($stockNOstart, $stockNOend);
my $sleepinterval;
my $stock_exist;
my $year_east;
################################
$stockNOstart = 0050;	$stockNOend = 9999;
$year = 2017;
$month = 7;	 
$sleepinterval = 1;
################################

open (write_file,">stock_number.txt") or die "open file error : $!";
	for ($stockNO = $stockNOstart; $stockNO <= $stockNOend; $stockNO++){

		$stockNO_tmp = $stockNO;
		
		if ($stockNO>=1000){
			$stockNO = $stockNO;
		}elsif ($stockNO>=100){
			$stockNO = "0 $stockNO";
			$stockNO =~ s/ //g;
		}elsif ($stockNO>=10){
			$stockNO = "00 $stockNO";
			$stockNO =~ s/ //g;
		}else {
			$stockNO = "000 $stockNO";
			$stockNO =~ s/ //g;
		};
		
		$year_east = $year - 1911;
		if ($month>=10){
			$yearmonth = "$year $month 01";
			$yearmonth =~ s/ //g;
		}else{
			$yearmonth = "$year 0 $month 01";
			$yearmonth =~ s/ //g;
		}
		
		$url = "http://www.tse.com.tw/exchangeReport/STOCK_DAY".
			"?response=html&date= $yearmonth &stockNo= $stockNO";
		$url =~ s/ //g;
		
		$stock_exist = get_url_data ($url, $sleepinterval, $yearmonth, $stockNO); #submodule
		
		if ($stock_exist == 0) {
			my $locatime = localtime();
			print  "There is no ", $stockNO," table @", $locatime, "\n";
		};

		if ($stock_exist == 1) {	
			print write_file ($stockNO,"\n");	
			system "del test_0_$stockNO.txt";
		};
		
		$stockNO = $stockNO_tmp;
				
	};
close write_file;

################################
print "\n\n ~~~~ All works have been done! ~~~~ \n\n";

=header 
Branch: master Find file Copy pathperl_stock/History
@b9907020 b9907020 Update History
1 contributor
RawBlameHistory     
Contact GitHub API Training Shop Blog About
© 2017 GitHub, Inc. Terms Privacy Security Status Help
=cut

sub get_url_data {
	my ($url_in, $sleepinterval_in, $yearmonth_in, $stockNO_in) = @_;
	my ($stock_exist_out);
	my ($getdoc, $datestring);
	
	################################ wait until get data
	whileloop_1: while (1){
		$getdoc = get $url_in;
		$getdoc =~ s/ //g;
		sleep($sleepinterval_in);
		if ($getdoc =~ /<div>/ ){ last whileloop_1; };
	};

	################################ write data to test_0
	if ($getdoc =~ /<table>/ ){
		
		open (write_file_2,">test_0_$stockNO_in.txt") or die "open file error : $!";
			print write_file_2 ($getdoc);
		close write_file_2;
		
		$datestring = localtime();
		print  "$url\n";
		print  "$yearmonth_in : fetch time $datestring\n";
		$stock_exist_out = 1;
	}else{
		$stock_exist_out = 0;
	};
	return $stock_exist_out;
};


