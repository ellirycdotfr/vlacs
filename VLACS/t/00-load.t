#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'VLACS' );
}

diag( "Testing VLACS $VLACS::VERSION, Perl $], $^X" );
