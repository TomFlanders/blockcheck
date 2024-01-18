#Load blocks file
open(BFILE, "blocks.txt");

#assign blocks to array
while ($line = <BFILE>){
    chomp($line);
    push(@blocks,$line);
}
close(BFILE);

#Join array as regex
$theBlocks = join("|",@blocks);

#Open output file
open(OFILE, ">BlockReport.csv");

#Open log file
$filename = $ARGV[0];
open(INFILE, "$filename");

#Check each line for blocks regex
while($line = <INFILE>) {
    if($line =~ /$theBlocks/i) {
        print OFILE $line;
    }
}

#Close files
close(INFILE);
close(OFILE);
