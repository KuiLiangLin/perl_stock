#!usr/bin/perl
use warnings; use strict;
use LWP::Simple;

################################

my $stockNO;
my $yearmonth;
my $url;
my $getdoc;
my $datestring;
my $yearmonthday;
my @input;
my @input_1;
my ($yearstart,$yearend);
my ($monthstart, $monthend);
my ($daystart, $dayend);
my ($stockNOstart, $stockNOend);
my $sleepinterval;
my $nothisstocknumber;
my @two;
my @split;
my @three;
my @four;

################################

#$stockNO = 2330;
$stockNOstart = 2331;	$stockNOend = 2334;
$yearstart = 2016;	$yearend = 2016;
$monthstart = 9;	 $monthend = 10;
$daystart = 1;	$dayend = 31;
$sleepinterval = 5;

################################
for ($stockNO = $stockNOstart; $stockNO <= $stockNOend; $stockNO++){
	
	################################~~~skill~~~
	
	if (-e "test_2_$stockNO.txt"){
		open (open_file, "<test_2_$stockNO.txt") or die "open file error : $!";
			@input = <open_file>;
		close open_file;
		
		if ($input[0] =~ /$stockNO/){
			#foreach (@input) { print "\n $_ ";}
			@two = 0;
			for (my $i=0; $i<$#input+1; $i++) {
				$input[$i] =~ s/,//g;
				$input[$i] =~ s/\t\t/, /g;
				@split = split(', ' , $input[$i]);
				
				@two[$i] = ([   $split[0], $split[1], $split[2], 
								$split[3], $split[4], $split[5], 
								$split[6], $split[7], $split[8]]);
				
			};
			@three[0] = ([@two]);
		};
	};
	
	################################~~~basic~~~
	
	if (-e "test_2_$stockNO.txt"){
		open (open_file, "<test_2_$stockNO.txt") or die "open file error : $!";
			@input = <open_file>;
		close open_file;
		
		if ($input[0] =~ /$stockNO/){
			#foreach (@input) { print "\n $_ ";}
			@two = 0;
			for (my $i=0; $i<$#input+1; $i++) {
				$input[$i] =~ s/,//g;
				$input[$i] =~ s/\t\t/, /g;
				@split = split(', ' , $input[$i]);
				
				@two[$i] = ([   $split[0], $split[1], $split[2], 
								$split[3], $split[4], $split[5], 
								$split[6], $split[7], $split[8]]);
				
			};
			@three[1] = ([@two]);
		};
	};
	
	################################~~~volumn~~~
	
	if (-e "test_2_$stockNO.txt"){
		open (open_file, "<test_2_$stockNO.txt") or die "open file error : $!";
			@input = <open_file>;
		close open_file;
		
		if ($input[0] =~ /$stockNO/){
			#foreach (@input) { print "\n $_ ";}
			@two = 0;
			for (my $i=0; $i<$#input+1; $i++) {
				$input[$i] =~ s/,//g;
				$input[$i] =~ s/\t\t/, /g;
				@split = split(', ' , $input[$i]);
				
				@two[$i] = ([   $split[0], $split[1], $split[2], 
								$split[3], $split[4], $split[5], 
								$split[6], $split[7], $split[8]]);
				
			};
			@three[2] = ([@two]);
		};
	};	
	
	################################~~~all data~~~
	
	@four[$stockNO] = ([@three]);

};

### $four [stock_number] [skill/basic/volum][date] [data] ###
print $four[2331][0][0][0],"\n";
print $four[2331][0][1][0],"\n";
print $four[2331][0][1][1],"\n";
print $four[2331][0][2][0],"\n";
print $four[2331][0][2][1],"\n";
print "\n";
print $four[2332][0][0][0],"\n";

print "\n\n ~~~~ All works have been done! ~~~~ \n\n";

################################
=header
~~~skill~~~
NO        成交股數           成交金額          開盤價/最高價/最低價/收盤價/漲跌價差/成交筆數
100/01/01 $four[NO][1][1][1] $four[NO][1][1][2]
100/01/02 $four[NO][1][2][1] $four[NO][1][2][2]
100/01/03 $four[NO][1][3][1] $four[NO][1][3][3] ......
......
......
=cut

=header
~~~basic~~~

=cut


=header
~~~volumn~~~


=cut

################################

=header
#@all = split(' ' , $input[$i]);
#for ($k=2; $k<$#all+1; $k+=3){print $all[$k], "\n";}
if ($all[0] =~ /WORD_WIDTH/) {$WORD_WIDTH = $all[2];};
if ($all[0] =~ /ADDRX_END/) {$ADDRX_END = $all[2];};
if ($all[0] =~ /ADDRY_END/) {$ADDRY_END = $all[2];};
if ($all[0] =~ /MEM_QUOTA/) {$MEM_QUOTA = $all[2];};
if ($all[0] =~ /Total_bank/) {$Total_bank = $all[2];};
if ($all[0] =~ /Sub_bank/) {$Sub_bank = $all[2];};
if ($all[0] =~ /Latch_wr_req_dly_cycle/) {$Latch_wr_req_dly_cycle = $all[2];};
if ($all[0] =~ /Latch_dp_req_dly_cycle/) {$Latch_dp_req_dly_cycle = $all[2];};
=cut



=header
my @d1 = (24.2, 26.3, 23.4);  		# 每天的溫度
my @d2 = (23.5, 27.5, 22.6);
my @d3 = (25.2, 28.7, 24.8);
......
......
my @d30 = (19.8, 22.1, 19.2);
my @daily = (\@d1, \@d2, \@d3, ...... , \@d30); # 當月每天的溫度
# ${$daily[4]}[0]就代表了第五天的第一次測量
=cut

=header
@daily = ([24.2, 26.3, 23.4], [23.5, 27.5, 22.6], [25.2, 28.7, 24.8]...);
print $daily[2][1];
=cut

=header
system "gvim mem_try_output.v";
print "\n ~~~~ All works have been done! ~~~~ \n\n";
=cut
