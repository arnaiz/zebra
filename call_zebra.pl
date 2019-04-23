#!/usr/bin/env perl
use warnings;
use CGI;

my $title="\"Title of the report\"";
my $log_file="./resource.log";

print `/usr/local/sbin/zebra.pl $log_file $title`;
