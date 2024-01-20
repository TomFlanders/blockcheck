
# BlockCheck
PERL script to check log files to see if .htaccess and robots.txt are working

## author
Tom Flanders

## version
0.6.0

## requirements
PERL

## installation
git clone https://github.com/TomFlanders/blockcheck

Edit the file blocks.txt to include blocked items from your .htaccess and robots files.

## usage
perl block.pl [full path to logfile]

This create the file BlockReport.csv

## Roadmap
Working on a version that will check all the logfiles in a folder
