use strict;

#Load blocks file
open(BFILE, "blocks.txt");
my @blocks;

#assign blocks to array
while (my $line = <BFILE>){
    chomp($line);
    push(@blocks,$line);
}
close(BFILE);

#Join array as regex
my $theBlocks = join("|",@blocks);

#Open output file
open(OFILE, ">BlockReport.csv");

#Open log file
my $filename = $ARGV[0];
open(INFILE, "$filename");

#Check each line for blocks regex
while(my $line = <INFILE>) {
    if($line =~ /$theBlocks/i) {
        print OFILE $line;
    }
}

#Close files
close(INFILE);
close(OFILE);
