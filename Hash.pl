#!usr/bin/perl
use warnings; use strict;
use LWP::Simple;

################################

my $stockNO;
my @stockNum;
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

################################ open_file,"<stock_number
open (open_file,"<stock_number.txt") or die "open file error : $!";
	@stockNum = <open_file>;
close open_file;

################################ main
for (my $k=0; $k<$#stockNum+1; $k++) {
	$stockNO = $stockNum[$k];
	$stockNO =~ s/\n//g;
	
	Three_Linked ( $stockNO, "skill", 0 );
	
	Three_Linked ( $stockNO, "acredit", 1 );
	Three_Linked ( $stockNO, "foreign", 2 );
	Three_Linked ( $stockNO, "netbuy", 3 );
	Three_Linked ( $stockNO, "zhuli", 4 );
	
	Three_Linked ( $stockNO, "asale", 5 );
	
	Three_Linked ( $stockNO, "balance", 6 );
	Three_Linked ( $stockNO, "income", 7 );
	Three_Linked ( $stockNO, "dividend", 8 );
	Three_Linked ( $stockNO, "finicial", 9 );
	
	@four[$stockNO] = ([@three]);
	
	
};



### $four [stock_number] [skill/basic/volum][date] [data] ###
print $four[2331][7][1][9],"\n";
print $four[2331][8][4][3],"\n";
print $four[2331][2][1][3],"\n";
print $four[2331][0][2][4],"\n";
print $four[2331][1][0][5],"\n";
#print "\n";
#print $four[2332][0][0][0],"\n";

print "\n\n ~~~~ Hash => All works have been done! ~~~~ \n\n";

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


sub Three_Linked {
	my ($stockNO_in, $nnaammee_in, $number_in) = @_;

	if (-e "$stockNO_in\_$nnaammee_in\.txt"){
		open (open_file, "<$stockNO_in\_$nnaammee_in\.txt") or die "open file error : $!";
			@input = <open_file>;
		close open_file;
		
		#if ($input[0] =~ /$stockNO/){
		#foreach (@input) { print "\n $_ ";}
		@two = 0;
		for (my $i=0; $i<=$#input; $i++) {
			#$input[$i] =~ s/,//g;
			$input[$i] =~ s/\t/ /g;
			$input[$i] =~ s/ +/\t/g;
			@split = split('\t' , $input[$i]);
			
			for (my $j=0; $j<=$#split; $j++) {
				$split[$j] =~ s/\n//g;
			};
			
			for (my $j=$#split+1; $j<=9; $j++) {
				$split[$j] = 0;
			};
			
			@two[$i] = ([   $split[0], $split[1], $split[2], 
							$split[3], $split[4], $split[5], 
							$split[6], $split[7], $split[8],
							$split[9], $#split	, $#input   ]);
			
		};
		@three[$number_in] = ([@two]);
		#};
	};	
};

=header
sub Chop_New_Line {
	my ($stockNO_in) = @_;
	for (my $i=0; $i<=9; $i++) {
		for (my $j=0; $j<$#input+1; $j++) {
			for (my $k=0; $k<$#input+1; $k++) {
				$four[$stockNO_in][$i][$j][$k]=~ s/\t/ /g;
			};
		};
	};
};


sub Chop_First_Column{


};
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

=header
daily acredit foreign netbuy skill zhuli
month asale
season balance income
year dividend finicial
=cut
