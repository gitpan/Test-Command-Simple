#!perl -T

use Test::More tests => 1;

BAIL_OUT("No support for OS")
    if $^O =~ /win/i && $^O !~ /cygwin/i;

BEGIN {
    use_ok( 'Test::Command::Simple' ) || print "Bail out!
";
}

diag( "Testing Test::Command::Simple $Test::Command::Simple::VERSION, Perl $], $^X" );
