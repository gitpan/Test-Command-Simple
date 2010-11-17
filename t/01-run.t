#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

BEGIN {
    use_ok('Test::Command');
}

my $iswin;
if ($^O =~ /MSWin/i)
{
    $iswin++;
}

run($iswin ? (qw:cmd /c:) : (qw:sh -c:), 'echo "this is here in the output"');
like(stdout, qr/here in the/, "Output looks ok");
is(length stderr, 0, "No stderr");
is(rc, 0, "Returns ok");

run_ok('echo', 'something else');
like(stdout, qr/mething/);

# check that the return code is tested
run_ok(3, $^X, -le => 'exit 3');

done_testing();
