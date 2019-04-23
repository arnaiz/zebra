#!/usr/bin/env perl
use warnings;
use File::stat;
use File::Basename;
use Time::localtime;
use CGI;

my $help_line="\n" . basename($0) . " log_file \"header report title\"\n";
my $HEADER=$ARGV[1];
my $LOG_PATH=$ARGV[0];

(length $HEADER>0 && $HEADER) or die "Header parameter not found:$help_line\n";
(length $LOG_PATH>0) or die "Not valid log file path parameter:$help_line\n";
(open (LOG, '<:', $LOG_PATH)) or die "Log file " . $LOG_PATH . " not found:$help_line\n";
my $snapshot_time=ctime(stat($LOG_PATH)->mtime);

#print html headers
print "content-type: text/html\n\n";
print "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n";
print "<html lang=\"es\" xml:lang=\"es\" xmlns=\"http://www.w3.org/1999/xhtml\">\n";
print "<head>\n";
print "<title>$HEADER</title>\n";
print "</head>\n";
print "<body>\n";
print "<h1>$HEADER</h1>\n";
print "<h2>Snapshot time: ".$snapshot_time."</h2>";

#print log
print "<pre>\n";
print "\t<code>\n";
foreach $row (<LOG>){
	print "$row";
}
close (LOG);
print "\t</code>\n";
print "</pre>\n";

print "<blockquote>\n";
print "\tzebra log viewer. Report launched time:"; system("date");
print "<blockquote>\n";
print "</body>\n";
print "</html>\n";
